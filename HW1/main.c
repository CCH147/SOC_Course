
#include "xparameters.h"
#include "xil_io.h"
#include "sleep.h"

// AXI Base Address
#define HW1_BASEADDR XPAR_HW1_0_S00_AXI_BASEADDR

// Register Offset
#define REG_START 0x00   // slv_reg0 → 控制 start
#define REG_INDEX 0x04   // slv_reg1 → 回傳 led_index

int main() {
    int i;
    u32 index;

    xil_printf("=== Start LED Test via AXI IP ===\n\r");

    for (i = 0; i < 8; i++) {
        // 發送 start pulse（寫 1 → 等一下 → 寫 0）
        Xil_Out32(HW1_BASEADDR + REG_START, 0x01);
        usleep(1000);  // 等待 1ms
        Xil_Out32(HW1_BASEADDR + REG_START, 0x00);

        // 等待 Verilog 更新 led_index
        usleep(1000);

        // 讀取目前亮的 LED index
        index = Xil_In32(HW1_BASEADDR + REG_INDEX);
        xil_printf("LED Index = %d\n\r", index & 0x7);  

        usleep(700000);  
    }

    xil_printf("=== LED Test Complete ===\n\r");
    return 0;
}