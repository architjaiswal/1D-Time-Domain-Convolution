Junfu Cheng
77844387

Archit Jaiswal
28112009

Instructions: 

We write our own dram_rd and it 100% passed the SW test on server

We have the working convolve IP. It 100% work in simulation and 99.9997% work in SW test on server. see report for details

We have extra credit work on how to HW padding the signal. See extra folder

new_dram_rd.vhd requires the dram_FIFO
For CONV, definition of kernel_buffer and signal buffer and others are all in user_app.vhd

Before checking our IP packages please manual include /dram_test_1.0/src/dma_fifo/dma_fifo.xci' with the support setting of the current Simulation Language: 'Mixed.'
And it is necessary to upgrade dma, mmap_data and mmap_request fifos IP sources one by one if they are locked.
We recommend to use  Vivado  2021.1 version
D_RAM_RD
Our D_RAM_RD 100% works.