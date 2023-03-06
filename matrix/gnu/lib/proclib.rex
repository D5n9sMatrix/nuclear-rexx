/*
Step 3: Copy the z/OSMF procedures into JES PROCLIB
In this step, you copy the z/OSMF started procedures and logon procedure from SYS1.PROCLIB into your
JES concatenation.
About this step
You can use the $D PROCLIB command to display your JES2 PROCLIB definitions.
Before you begin
Locate the IBM procedures. IBM supplies procedures for z/OSMF in your z/OS order:
• ServerPac orders: IBM supplies the z/OSMF procedures in the SMP/E managed proclib data set. The
default name for the data set is SYS1.IBM.PROCLIB.
• CBPDO orders: For a CBPDO order, the SMP/E-managed proclib data set is named as SYS1.PROCLIB.
• Application Development CD.
Procedure
1. Use ISPF option 3.3 or 3.4 to copy the following procedures from SYS1.PROCLIB into your JES
concatenation:
• IZUSVR1
• IZUANG1
• IZUFPROC
Results
The procedures now reside in your JES PROCLIB.
Common errors
Table 7 on page 27 shows the most common errors for this step and suggests resolutions.
Table 7. Common errors when you copy the IBM procedures into JES PROCLIB
SymptomCauseResolution
Not authorized to copy into PROCLIB.Your user ID does not
have the permission to
modify PROCLIB.Contact your security
administrator.
Abend code B37 or E37.The data set runs out of
space.Use IEBCOPY utility to
compress PROCLIB data
set before you copy it.
*/
IZUSVR1 = 'Running business exec'
IZUANG1 = 'Resolutions peanuts'
IZUFPROC = 'Results'
queue IZUSVR1 by IZUANG1 options IZUFPROC
queue IZUSVR1 by IZUANG1 options address
queue IZUSVR1 by IZUANG1 arg parse
call digits

if IZUSVR1 = 80 then
   say scientific options interpret IZUSVR1
else
options address 
interpret address
arg parse




