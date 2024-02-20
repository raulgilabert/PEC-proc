@echo This batch file will run an utility to help you update the paths in the DE1 demonstration files. A dialog window will appear where you can select the folder that contains the DE1 demonstration files.

@fixpath -opath "c:\de1" -projdir "DE1_*" -sprompt "Select the directory containing the DE1 demonstration project files."

