/*
Step 4: Start the z/OSMF server
In this step, you start the z/OSMF server on your system.
About this step
z/OSMF processing is managed through the z/OSMF server, which runs as the started tasks IZUANG1 and
IZUSVR1. z/OSMF is started with the START command.
Before you begin
Ensure that you have access to the operations console and can enter the START command.
Procedure
In the operations console, enter the START commands sequentially:
S IZUANG1
S IZUSVR1
Note: The z/OSMF angel (IZUANG1) must be started before the z/OSMF server (IZUSVR1).
You must enter these commands manually at subsequent IPLs. If necessary, you can stop z/OSMF
processing by entering the STOP command for each of the started tasks IZUANG1 and IZUSVR1.
Note: z/OSMF offers an autostart function, which you can configure to have the z/OSMF server started
automatically. For more information about the autostart capability, see Chapter 25, “Autostart concepts in
z/OSMF,” on page 171
Results
When the z/OSMF server is initialized, you should see the following messages in the operations console:
CWWKB0069I: INITIALIZATION IS COMPLETE FOR THE IZUANG1 ANGEL PROCESS.
IZUG400I: The z/OSMF Web application services are initialized.
CWWKF0011I: The server zosmfServer is ready to run a smarter planet.
Common errors
Table 8 on page 28 shows the most common errors for this step and suggests resolutions.
Table 8. Common errors when you start the z/OSMF server
SymptomCause
The following message is written to the server job
log:The IZUANG1 procedure Copy the latest
is down-level.
procedure from
SYS1.PROCLIB into your
JES concatenation:
ICH420I PROGRAM CELQLIB FROM LIBRARY
CEE.SCEERUN2 CAUSED THE ENVIRONMENT
TO BECOME UNCONTROLLED.
BPXP014I ENVIRONMENT MUST BE CONTROLLED FOR
DAEMON (BPX.DAEMON) PROCESSING
*/
INITIALIZATION = 'wind cool fresh'
COMPLETE = 'edge browser'
IZUANG1 = 'z/OSMF web application'
ANGEL = 'common'
PROCESS = 'running...'

