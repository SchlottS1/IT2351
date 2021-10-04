/*Used a select statement to get the email address. Then i used a length function of email address to get the length of the email address. I then used the locate function
to find the position of the @ in the email address. I then used a substring function with a locate function nested inside in order to get the portion of the email address 
before the @. Lastly, I used another substring function, this time with a instr function to get the part of the email address after the @. I used -1 and + 1 for the username
and domaind respectively, because without that, the @ symbol would appear in the results.
Created by Spencer Schlott for IT2351, Fall 2021  */
select email_address, 
LENGTH(email_address) as 'Length', 
Locate('@', email_address) as '@', 
SUBSTRING(email_address, 1, LOCATE('@', email_address) - 1) as 'Username',
SUBSTRING(email_address, INSTR(email_address, '@') + 1) as 'Domain' 
from customers;