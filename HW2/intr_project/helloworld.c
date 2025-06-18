#include <stdio.h>
#include "platform.h"

#include "xparameters.h"
#include "xgpio.h"
#include "xscugic.h"

#define Z700_INTC_ID      XPAR_PS7_SCUGIC_0_DEVICE_ID
#define BTN_ID            XPAR_AXI_GPIO_1_DEVICE_ID
#define LED_ID            XPAR_AXI_GPIO_0_DEVICE_ID
#define INTC_GPIO_ID      XPAR_FABRIC_AXI_GPIO_1_IP2INTC_IRPT_INTR
#define BTN_INT           XGPIO_IR_CH1_MASK
#define GIC_ID            XPAR_SCUGIC_SINGLE_DEVICE_ID

XGpio LED, BTN;
XScuGic INTCInst;
int LED_num = 0;
int Intr_CTN = 0;

// ================================
void Intr_Handler() {
    delay(10000);  // debounce

    XGpio_InterruptDisable(&BTN, BTN_INT);
    XGpio_InterruptClear(&BTN, BTN_INT);

    Intr_CTN++;
    printf("Interrupt: %d\n", Intr_CTN);

    // 每按一次按鈕就讓 LED 閃爍一次
    XGpio_DiscreteWrite(&LED, 1, 0xFF);
    delay(500);
    XGpio_DiscreteWrite(&LED, 1, 0x00);

    XGpio_InterruptEnable(&BTN, BTN_INT);
}

// ================================
void Intr_Setup(XScuGic *GicInstancePtr, XGpio *GpioInstancePtr)
{
    XScuGic_Config *IntcConfig;
    IntcConfig = XScuGic_LookupConfig(GIC_ID);
    XScuGic_CfgInitialize(GicInstancePtr, IntcConfig, IntcConfig->CpuBaseAddress);

    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, GicInstancePtr);
    Xil_ExceptionEnableMask(XIL_EXCEPTION_IRQ);

    XScuGic_Connect(GicInstancePtr, INTC_GPIO_ID, (Xil_ExceptionHandler)Intr_Handler, (void *)GpioInstancePtr);
    XScuGic_Enable(GicInstancePtr, INTC_GPIO_ID);

    XGpio_InterruptGlobalEnable(GpioInstancePtr);
    XGpio_InterruptEnable(GpioInstancePtr, BTN_INT);
}
void delay(int ms) {
    for (int i = 0; i < ms * 10000; i++) {
        asm("nop");
    }
}

// ================================
int main()
{
    init_platform();

    XGpio_Initialize(&LED, LED_ID);
    XGpio_SetDataDirection(&LED, 1, 0);

    XGpio_Initialize(&BTN, BTN_ID);
    XGpio_SetDataDirection(&BTN, 1, 1);

    Intr_Setup(&INTCInst, &BTN);
    print("Init successful\n");

    while (1) {
        XGpio_DiscreteWrite(&LED, 1, LED_num);
        printf("LED_num=%x\n", LED_num);
        LED_num = LED_num + 1;
        delay(500);
    }
}
