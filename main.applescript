-- When launched as an app
on run
	set script_path to POSIX path of (path to resource "Scripts/main.sh")
	do shell script quoted form of script_path & " run"
end run

-- When launched to open a URL
on open location the_url
	set script_path to POSIX path of (path to resource "Scripts/main.sh")
	do shell script quoted form of script_path & " url " & quoted form of the_url
end open location

-- When launched to open a file (e.g a file was drag-and-dropped onto the app)
on open the_file
	set file_path to POSIX path of the_file
	set script_path to POSIX path of (path to resource "Scripts/main.sh")
	do shell script quoted form of script_path & " file " & quoted form of file_path
end open
