# Snippet-Merge_CSV_Files

**ScriptName:** Merge_CSV_Files  
**Purpose:** This snippet is designed to merge multiple CSV files into a consolidated CSV file.

## Usecase  

During the Nessus scan activity, we may scan different servers individually or by group based on the environment or other categories. Once the scan activity is completed, we export the results into CSV files like 10 CSV files for 10 Nessus Scans. This scaript can be used to take a backup of the CSV file into a saparate random folder and merge them together into a consolidated document.

## Oneliner  

Instead of using the script, you can alternatively use the following command to merge the csv files into one consolidated file

`C:\My_CSV_files> copy *.csv consolidated_file.csv`

## Usage  
Just copy the script to the csv files location and double click on it to execute the script. Alternatively you may use the Windows Command Prompt to keep the output for some time.

`C:\My_CSV_files> Merge_CSV_Files.bat`

## Script Flow  
 - Create a random directory
 - List out the csv files
 - Copy the csv files into the new directory with bak file extension
 - Merge the copied bak file into consolidated CSV file
 - Display the merged file in a windows explorer window
 - Display the summary


## Sample Screenshots   

1. Oneliner Output:  
<kbd>![alt text](https://github.com/V9Y1nf0S3C/Snippet-Merge_CSV_Files/blob/main/Screenshots/1.OneLiner_Output.png?raw=true)</kbd>

2. Script Output:  
<kbd>![alt text](https://github.com/V9Y1nf0S3C/Snippet-Merge_CSV_Files/blob/main/Screenshots/2.Script_Output.png?raw=true)</kbd>

3. Merged File output:  
<kbd>![alt text](https://github.com/V9Y1nf0S3C/Snippet-Merge_CSV_Files/blob/main/Screenshots/2.3_consolidated_files.png?raw=true)</kbd>



