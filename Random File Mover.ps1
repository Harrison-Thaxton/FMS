$Files = (GCI Put_file_path_here).FullName 
$Folders = "Put_file_path_here", "Put_file_path_here","Put_file_path_here"
$Files | %{Copy-Item $_ $Folders[(Get-Random -Maximum ($Folders.Count))] -Recurse -Container }

# Explanation of what this does
# Line 1: Names a variable called $Files, GetsChildItem for the files using the Full Path instead of File Name
# Line 2: Names a variable called $Folders, Replace the text inside the quotations to add directories to move the files to, to add more add a comma after the quotation, and add another filepath inside of quotations
# Line 3: Calls the Files variable from earlier, then pipes in another command to copy the files inside to a random location supplied by the $Folders variable, the -Recurse allows the script to 
# Line 3: recursively move files inside of a folder, and the -Container will keep them inside of the folder after the folder has been moved, if you are not using folders you can remove that if you would like
# Full credit for this script goes to Reddit user /u/jheinikel for pretty much creating the script for me, all I did was tweak it to fit my needs
# Make sure that your ExecutionPolicy is set before running this script, this depends on what kind of environment you are running the script in, if you are unsure about what execution policy to set, please
# research them before making a decision.