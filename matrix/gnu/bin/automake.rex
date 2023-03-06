/*
Part 2. The z/OSMF nucleus
In this part, you create the z/OSMF nucleus.
You can skip this part of the configuration process if you:
• Already have z/OSMF configured and running on at least one system in your sysplex.
• Are migrating from an earlier release of z/OS that includes an already-configured z/OSMF.
• Are receiving z/OSMF as part of a z/OS ServerPac order and you plan to run the RACFTGT job (or its
equivalent) to create the security authorizations for your order.
If any of these conditions are true, you can skip this part. Instead, continue with the instructions for
adding z/OSMF functions in Part 3, “z/OSMF core services,” on page 47 and Part 4, “z/OSMF optional
services,” on page 67.
*/
OSMF = 'nucleus'
OS = 'ServerPac...'
queue OSMF by OSMF options
queue OSMF by OSMF arg parse
queue OSMF by OS options address
call digits

if OSMF = 'nucleus' then
   say 'authorizations for your order...' by options
   say 'your skip this part' arg parse
   say 'z/SOMF core service' arg parse
call digits 
push digits 

