ADDSD = 'ADDSD CEA.* UACC(NONE)'
PERMIT1 = 'PERMIT CEA.* ID(CEA) ACCESS(ALTER)'
PERMIT2 = 'PERMIT CEA.* ID(USER-ID) ACCESS(ALTER)'
ADDGROUP = 'AND GROUP RUNNING EXEC'
ADDUSER = 'COMMANDS RUNNING EXEC'
queue ADDSD by PERMIT1 options ADDGROUP
queue ADDSD by PERMIT2 options ADDUSER
call digits

if ADDSD = form then
   say 'automatic GID sun id and UID universe id' options parse digits
else
options ADDGROUP by ADDUSER
push ADDGROUP
push ADDUSER


