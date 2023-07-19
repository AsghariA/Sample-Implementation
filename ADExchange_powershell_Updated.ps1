import-module activedirectory

New-ADOrganizationalUnit -Name "CorporateOffice" -Path "DC=Contoso,DC=com"
New-ADOrganizationalUnit -Name "Finance" -Path "DC=Contoso,DC=com"
New-ADOrganizationalUnit -Name "Sales" -Path "DC=Contoso,DC=com"
New-ADOrganizationalUnit -Name "HR" -Path "DC=Contoso,DC=com"
New-ADOrganizationalUnit -Name "Technology" -Path "DC=Contoso,DC=com"
New-ADOrganizationalUnit -Name "Logistics" -Path "DC=Contoso,DC=com"

New-ADGroup -Name "Finance" -SamAccountName "Finance" -GroupCategory Security -GroupScope Global -DisplayName "Finance" -Path "OU=FINANCE,DC=Contoso,DC=com" -Description "Finance"
New-ADGroup -Name "Corporate Finance" -SamAccountName "Corporate Finance" -GroupCategory Security -GroupScope Global -DisplayName "Corporate Finance" -Path "OU=FINANCE,DC=Contoso,DC=com" -Description "Corporate Finance"  
New-ADGroup -Name "Accounts Receivable" -SamAccountName "Accounts Receivable" -GroupCategory Security -GroupScope Global -DisplayName "Accounts Receivable" -Path "OU=FINANCE,DC=Contoso,DC=com" -Description "Accounts Receivable"  
New-ADGroup -Name "Account Payable" -SamAccountName "Account Payable" -GroupCategory Security -GroupScope Global -DisplayName "Account Payable" -Path "OU=FINANCE,DC=Contoso,DC=com" -Description "Account Payable" 
New-ADGroup -Name "Credit Management" -SamAccountName "Credit Management" -GroupCategory Security -GroupScope Global -DisplayName "Credit Management" -Path "OU=FINANCE,DC=Contoso,DC=com" -Description "Credit Management"  
 


New-ADGroup -Name "HR" -SamAccountName "HR" -GroupCategory Security -GroupScope Global -DisplayName "HR" -Path "OU=HR,DC=Contoso,DC=com" -Description "HR"
New-ADGroup -Name "Employee Recruitment" -SamAccountName "Employee Recruitment" -GroupCategory Security -GroupScope Global -DisplayName "Employee Recruitment" -Path "OU=HR,DC=Contoso,DC=com" -Description "Employee Recruitment"  
New-ADGroup -Name "Training and Development" -SamAccountName "Training and Development" -GroupCategory Security -GroupScope Global -DisplayName "Training and Development" -Path "OU=HR,DC=Contoso,DC=com" -Description "Training and Development"  
New-ADGroup -Name "Payroll compensation and Benefits" -SamAccountName "Payroll compensation and Benefits" -GroupCategory Security -GroupScope Global -DisplayName "Payroll compensation and Benefits" -Path "OU=HR,DC=Contoso,DC=com" -Description "Payroll compensation and Benefits" 
New-ADGroup -Name "HR Industrial Relations" -SamAccountName "HR Industrial Relations" -GroupCategory Security -GroupScope Global -DisplayName "HR Industrial Relations" -Path "OU=HR,DC=Contoso,DC=com" -Description "HR Industrial Relations"  
 


New-ADGroup -Name "Sales" -SamAccountName "Sales" -GroupCategory Security -GroupScope Global -DisplayName "Sales" -Path "OU=Sales,DC=Contoso,DC=com" -Description "Sales"
New-ADGroup -Name "Sales Operations" -SamAccountName "Sales Operations" -GroupCategory Security -GroupScope Global -DisplayName "Sales Operations" -Path "OU=Sales,DC=Contoso,DC=com" -Description "Sales Operations"  
New-ADGroup -Name "Sales Support" -SamAccountName "Sales Support" -GroupCategory Security -GroupScope Global -DisplayName "Sales Support" -Path "OU=Sales,DC=Contoso,DC=com" -Description "Sales Support"  
New-ADGroup -Name "Shipping & Transportation" -SamAccountName "Shipping & Transportation" -GroupCategory Security -GroupScope Global -DisplayName "Shipping & Transportation" -Path "OU=Sales,DC=Contoso,DC=com" -Description "Shipping & Transportation" 
New-ADGroup -Name "Billing" -SamAccountName "Billing" -GroupCategory Security -GroupScope Global -DisplayName "Billing" -Path "OU=Sales,DC=Contoso,DC=com" -Description "Billing"  
 


New-ADGroup -Name "Technology" -SamAccountName "Technology" -GroupCategory Security -GroupScope Global -DisplayName "Technology" -Path "OU= Technology,DC=Contoso,DC=com" -Description "Technology"
New-ADGroup -Name "Information Technology" -SamAccountName "Information Technology" -GroupCategory Security -GroupScope Global -DisplayName "Information Technology" -Path "OU=Technology,DC=Contoso,DC=com" -Description "Information Technology"  
New-ADGroup -Name "Security Operations" -SamAccountName "Security Operations" -GroupCategory Security -GroupScope Global -DisplayName "Security Operations" -Path "OU=Technology,DC=Contoso,DC=com" -Description "Security Operations"  
New-ADGroup -Name "Professional Services" -SamAccountName "Professional Services" -GroupCategory Security -GroupScope Global -DisplayName "Professional Services" -Path "OU=Technology,DC=Contoso,DC=com" -Description "Professional Services" 
New-ADGroup -Name "Research & Information" -SamAccountName "Research & Information" -GroupCategory Security -GroupScope Global -DisplayName "Research & Information" -Path "OU=Technology,DC=Contoso,DC=com" -Description "Research & Information"  
 


New-ADGroup -Name "Logistics" -SamAccountName "Logistics" -GroupCategory Security -GroupScope Global -DisplayName "Logistics" -Path "OU=Logistics,DC=Contoso,DC=com" -Description " 
Logistics"
New-ADGroup -Name "Materials Management" -SamAccountName "Materials Management" -GroupCategory Security -GroupScope Global -DisplayName "Materials Management" -Path "OU=Logistics,DC=Contoso,DC=com" -Description "Materials Management"  
New-ADGroup -Name "Quality Management" -SamAccountName  "Quality Management" -GroupCategory Security -GroupScope Global -DisplayName "Quality Management" -Path "OU=Logistics,DC=Contoso,DC=com" -Description "Quality Management"  
New-ADGroup -Name "Production Planning" -SamAccountName "Production Planning" -GroupCategory Security -GroupScope Global -DisplayName "Production Planning" -Path "OU=Logistics,DC=Contoso,DC=com" -Description "Production Planning" 
New-ADGroup -Name "Logistics Controlling" -SamAccountName "Logistics Controlling" -GroupCategory Security -GroupScope Global -DisplayName "Logistics Controlling" -Path "OU=Logistics,DC=Contoso,DC=com" -Description "Logistics Controlling"



New-ADGroup -Name "Corporate Strategy" -SamAccountName "Corporate Strategy" -GroupCategory Security -GroupScope Global -DisplayName "Corporate Strategy" -Path "OU=CorporateOffice,DC=Contoso,DC=com" -Description "Corporate Strategy"
New-ADGroup -Name "Corporate Affairs" -SamAccountName "Corporate Affairs" -GroupCategory Security -GroupScope Global -DisplayName "Corporate Affairs" -Path "OU=CorporateOffice,DC=Contoso,DC=com" -Description "Corporate Affairs"  
New-ADGroup -Name "BoardOfDirectors" -SamAccountName "BoardOfDirectors" -GroupCategory Security -GroupScope Global -DisplayName "BoardOfDirectors" -Path "OU=CorporateOffice,DC=Contoso,DC=com" -Description "BoardOfDirectors"  




New-ADUser -Name "Aaron James" -GivenName Aaron -Surname James -SamAccountName AaronJames -UserPrincipalName AaronJames@falainacorp.com -description 10001 -Path 'OU=CorporateOffice,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Adam Jamie" -GivenName Adam -Surname Jamie -SamAccountName AdamJamie -UserPrincipalName AdamJamie@falainacorp.com -description 10002 -Path 'OU=FINANCE,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Alex Jay" -GivenName Alex -Surname Jay -SamAccountName AlexJay -UserPrincipalName AlexJay@falainacorp.com -description 10003 -Path 'OU=TECHNOLOGY,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Alexander Jayden" -GivenName Alexander -Surname Jayden -SamAccountName AlexanderJayden -UserPrincipalName AlexanderJayden@falainacorp.com -description 10004 -Path 'OU=HR,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Andrew Joe" -GivenName Andrew -Surname Joe -SamAccountName AndrewJoe -UserPrincipalName AndrewJoe@falainacorp.com -description 10005 -Path 'OU=LOGISTICS,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Archie Joel" -GivenName Archie -Surname Joel -SamAccountName ArchieJoel -UserPrincipalName ArchieJoel@falainacorp.com -description 10006 -Path 'OU=SALES,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Ashton John" -GivenName Ashton -Surname John -SamAccountName AshtonJohn -UserPrincipalName AshtonJohn@falainacorp.com -description 10007 -Path 'OU=FINANCE,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Bailey Joseph" -GivenName Bailey -Surname Joseph -SamAccountName BaileyJoseph -UserPrincipalName BaileyJoseph@falainacorp.com -description 10008 -Path 'OU=FINANCE,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Ben Josh" -GivenName Ben -Surname Josh -SamAccountName BenJosh -UserPrincipalName BenJosh@falainacorp.com -description 10009 -Path 'OU=FINANCE,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Benjamin Luke" -GivenName Benjamin -Surname Luke -SamAccountName BenjaminLuke -UserPrincipalName BenjaminLuke@falainacorp.com -description 10010 -Path 'OU=FINANCE,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Billy Mason" -GivenName Billy -Surname Mason -SamAccountName BillyMason -UserPrincipalName BillyMason@falainacorp.com -description 10011 -Path 'OU=TECHNOLOGY,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Bradley Matthew" -GivenName Bradley -Surname Matthew -SamAccountName BradleyMatthew -UserPrincipalName BradleyMatthew@falainacorp.com -description 10012 -Path 'OU=TECHNOLOGY,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Brandon Max" -GivenName Brandon -Surname Max -SamAccountName BrandonMax -UserPrincipalName BrandonMax@falainacorp.com -description 10013 -Path 'OU=TECHNOLOGY,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Cameron Michael" -GivenName Cameron -Surname Michael -SamAccountName CameronMichael -UserPrincipalName CameronMichael@falainacorp.com -description 10014 -Path 'OU=TECHNOLOGY,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Charles Mohammad" -GivenName Charles -Surname Mohammad -SamAccountName CharlesMohammad -UserPrincipalName CharlesMohammad@falainacorp.com -description 10015 -Path 'OU=HR,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Charlie Ryan" -GivenName Charlie -Surname Ryan -SamAccountName CharlieRyan -UserPrincipalName CharlieRyan@falainacorp.com -description 10016 -Path 'OU=HR,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Christopher Sam" -GivenName Christopher -Surname Sam -SamAccountName ChristopherSam -UserPrincipalName ChristopherSam@falainacorp.com -description 10017 -Path 'OU=HR,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Connor Samuel" -GivenName Connor -Surname Samuel -SamAccountName ConnorSamuel -UserPrincipalName ConnorSamuel@falainacorp.com -description 10018 -Path 'OU=HR,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Corey Sean" -GivenName Corey -Surname Sean -SamAccountName CoreySean -UserPrincipalName CoreySean@falainacorp.com -description 10019 -Path 'OU=LOGISTICS,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Daniel Sebastian" -GivenName Daniel -Surname Sebastian -SamAccountName DanielSebastian -UserPrincipalName DanielSebastian@falainacorp.com -description 10020 -Path 'OU=LOGISTICS,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "David Taylor" -GivenName David -Surname Taylor -SamAccountName DavidTaylor -UserPrincipalName DavidTaylor@falainacorp.com -description 10021 -Path 'OU=LOGISTICS,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Dominic Theo" -GivenName Dominic -Surname Theo -SamAccountName DominicTheo -UserPrincipalName DominicTheo@falainacorp.com -description 10022 -Path 'OU=LOGISTICS,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Dylan Thomas" -GivenName Dylan -Surname Thomas -SamAccountName DylanThomas -UserPrincipalName DylanThomas@falainacorp.com -description 10023 -Path 'OU=SALES,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Edward Toby" -GivenName Edward -Surname Toby -SamAccountName EdwardToby -UserPrincipalName EdwardToby@falainacorp.com -description 10024 -Path 'OU=SALES,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Elliot Robert" -GivenName Elliot -Surname Robert -SamAccountName ElliotRobert -UserPrincipalName ElliotRobert@falainacorp.com -description 10025 -Path 'OU=SALES,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount
New-ADUser -Name "Ethan William" -GivenName Ethan -Surname William -SamAccountName EthanWilliam -UserPrincipalName EthanWilliam@falainacorp.com -description 10026 -Path 'OU=SALES,DC=Contoso,DC=com' -AccountPassword (ConvertTo-SecureString “@bcd1234” -AsPlainText -force) -PassThru | Enable-ADAccount

Add-ADGroupMember -Identity "Corporate Strategy" -Members AaronJames
Add-ADGroupMember -Identity "Corporate Affairs" -Members AaronJames
Add-ADGroupMember -Identity "BoardOfDirectors" -Members AaronJames

Add-ADGroupMember -Identity "Finance" -Members AdamJamie,AshtonJohn,BaileyJoseph,BenJosh,BenjaminLuke
Add-ADGroupMember -Identity "Corporate Finance" -Members AdamJamie,AshtonJohn
Add-ADGroupMember -Identity "Accounts Receivable" -Members AdamJamie,BaileyJoseph
Add-ADGroupMember -Identity "Account Payable" -Members AdamJamie,BenJosh
Add-ADGroupMember -Identity "Credit Management" -Members AdamJamie,BenjaminLuke

Add-ADGroupMember -Identity "Technology" -Members AlexJay,BillyMason,BradleyMatthew,BrandonMax,CameronMichael
Add-ADGroupMember -Identity "Information Technology" -Members AlexJay,BillyMason
Add-ADGroupMember -Identity "Security Operations" -Members AlexJay,BradleyMatthew
Add-ADGroupMember -Identity "Professional Services" -Members AlexJay,BrandonMax
Add-ADGroupMember -Identity "Research & Information" -Members AlexJay,CameronMichael

Add-ADGroupMember -Identity "HR" -Members AlexanderJayden,CharlesMohammad,CharlieRyan,ChristopherSam,ConnorSamuel
Add-ADGroupMember -Identity "Employee Recruitment" -Members AlexanderJayden,CharlesMohammad
Add-ADGroupMember -Identity "HR Industrial Relations" -Members AlexanderJayden,CharlieRyan
Add-ADGroupMember -Identity "Training and Development" -Members AlexanderJayden,ChristopherSam
Add-ADGroupMember -Identity "Payroll compensation and Benefits" -Members AlexanderJayden,ConnorSamuel

Add-ADGroupMember -Identity "Logistics" -Members AndrewJoe,CoreySean,DanielSebastian,DavidTaylor,DominicTheo
Add-ADGroupMember -Identity "Materials Management" -Members AndrewJoe,CoreySean
Add-ADGroupMember -Identity "Quality Management" -Members AndrewJoe,DanielSebastian
Add-ADGroupMember -Identity "Production Planning" -Members AndrewJoe,DavidTaylor
Add-ADGroupMember -Identity "Logistics Controlling" -Members AndrewJoe,DominicTheo

Add-ADGroupMember -Identity "Sales" -Members ArchieJoel,DylanThomas,EdwardToby,ElliotRobert,EthanWilliam
Add-ADGroupMember -Identity "Sales Operations" -Members ArchieJoel,DylanThomas
Add-ADGroupMember -Identity "Sales Support" -Members ArchieJoel,EdwardToby
Add-ADGroupMember -Identity "Shipping & Transportation" -Members ArchieJoel,ElliotRobert
Add-ADGroupMember -Identity "Billing" -Members ArchieJoel,EthanWilliam

