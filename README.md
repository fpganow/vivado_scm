# vivado_scm
How to use Xilinx Vivado and git for source code control


## To re-create the project do the following:

### Clone the repository
![](./pictures/import/01-Clone_Repo.png)

### Enter the vivado directory from the Tcl Console
![](./pictures/import/02-Cd_from_tcl_console.png)

### Source tcl import script
![](./pictures/import/03-Source_tcl_script.png)

### Wait a little...
![](./pictures/import/04-Running_Create_Project.png)

### Generated Output Products for the Block Design
![](./pictures/import/05-Generate_Output_Products.png)

### Use Out-of-Content per IP (doesn't really matter though)
![](./pictures/import/06-Out_of_Context_per_IP.png)

### Generate Bitstream
![](./pictures/import/07-Generate_Bitstream.png)

## How to create a Vivado project from scratch and to export it for source control

### Create a new project
![](./pictures/export/01-Create_Project.png)

### Just hit next
![](./pictures/export/02-Create_Project_Step_1.png)

### Name the project whatever you like
![](./pictures/export/03-Create_Project_Step_2.png)

### Select the RTL Project type, no need to specify sources at this time.  If you do specify sources, make sure they are outside the path of the project itself.
![](./pictures/export/04-Create_Project_Step_3.png)

### I am using the Arty Artix-7 A100T edition of the board (USD 250)
![](./pictures/export/05-Create_Project_Step_4.png)

### Click finish
![](./pictures/export/06-Create_Project_Step_5.png)

### Create a Block Design
![](./pictures/export/07-Create_Block_Design.png)

### Name it whatever you like, but click on the directory.
![](./pictures/export/08-Pick_Custom_Location.png)

### Click Choose Location
![](./pictures/export/09-Pick_Custom_Location_2.png)

### I used the src/bd directory
![](./pictures/export/10-Pick_Custom_Location_3.png)

### I left out the rest, but I created a full block design
![](./pictures/export/11-Create_full_Block_Design.png)

### This is my directory structure for storing files.  I found this structure on other websites.  Make sure this directory structure is outside the directory where the vivado project is located.
![](./pictures/export/12-Create_these_dirs.png)

### Export the Hardware and include the bitstream - but wait... don't click ok.
![](./pictures/export/13-Export_Hardware.png)

### Select the src/sdk directory
![](./pictures/export/14-Again_outside_project_root.png)

### Now back to the launch SDK option, notice the changes
![](./pictures/export/15-Defaults_look_like_this.png)

### Find your com port and connect to it using 9600 baud rate.
![](./pictures/export/16-Run_it.png)

### Click File->Project->Write Tcl...
![](./pictures/export/17-Export_IP.png)

### I put this file in the parent directory of where the actual project is
![](./pictures/export/18-Nothing_Selected.png)

### Success
![](./pictures/export/19-Success.png)

### Take a look at the tcl
![](./pictures/export/20-Files-to-Import.png)

### Use the git_add.py Python3 script to parse this tcl file to add only the necessary files to source control
![](./pictures/export/21-Copy_git_add.png)

### Output shows which files were added.
![](./pictures/export/22-Use_my_git_add_script.png)

### Final Screenshot
![](./pictures/export/23-Use_my_script.png)
