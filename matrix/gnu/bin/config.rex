/*
Chapter 4. Create a z/OSMF nucleus on your system
This information is intended for a first-time z/OSMF setup. If z/OSMF is already configured on your
system, you do not need to create a z/OSMF nucleus on your system.
IBM provides a sample job, IZUNUSEC, to help you set up basic security for a z/OSMF nucleus
configuration.
System defaults are used for the z/OSMF environmental settings. Wherever possible, it is recommended
that you use the default values. However, if necessary you can override the defaults by supplying an
IZUPRMxx member, as described in “IZUPRMxx reference information” on page 35.
Creating a z/OSMF nucleus on your system can be accomplished in a short time by following these steps:
• “Step 1: Run job IZUNUSEC to create the z/OSMF security authorizations” on page 24
• “Step 2: Run job IZUMKFS to create the z/OSMF user file system” on page 26
• “Step 3: Copy the z/OSMF procedures into JES PROCLIB” on page 27
• “Step 4: Start the z/OSMF server” on page 28
• “Step 5: Log in to z/OSMF” on page 29
• “Step 6: Mount the z/OSMF user file system at IPL time” on page 30
The sample jobs that you might use are available from SYS1.SAMPLIB.
Additional usage and reference information is provided in the following topics:
• “Stopping and starting z/OSMF manually” on page 31
• “Displaying the z/OSMF server settings” on page 32
• “IZUPRMxx reference information” on page 35
• “IZUSVR reference information” on page 44
System setup requirements
This document assumes that the following is true of the z/OS host system:
• Port 443 is available for use. To check, enter either of the following TSO/E commands to determine
whether the port is being used: NETSTAT SOCKET or NETSTAT BYTE
• The system host name is unique and maps to the system on which z/OSMF is being installed. To retrieve
this value, enter either "hostname" z/OS UNIX command or TSO/E command "HOMETEST". If your
system uses another method of assigning the system name, such as a multi-home stack, dynamic VIPA,
or System Director, see Chapter 29, “Configuring z/OSMF for high availability,” on page 189.
• The global mount point exists. On a z/OS V2R4 system, the system includes this directory by default at
the following location: /global/zosmf/.
If you find that a different value is used on your z/OS system, you can edit the IZUPRMxx parmlib member
to specify the correct setting. For details, see “IZUPRMxx reference information” on page 35.
*/
OSMF = 'nucleus'
IZUNUSEC = 'help'
IZUMKFS = 'user'
IZUPRMxx = 'reference information'
IZUSVR = 'setup'
queue OSMF by IZUNUSEC options IZUMKFS
queue OSMF by IZUNUSEC options IZUPRMxx
queue OSMF by IZUSVR arg parse
call digits

if OSMF = 'nucleus' then
   say 'configuring z/OSMF NETSTAT' by IZUNUSEC
   say 'configuring z/OSMF SOCKET' by IZUMKFS
   say 'configuring z/OSMF HOMETEST' by IZUPRMxx
   say 'configuring z/OSMF host' by IZUSVR
options address
call digits    

