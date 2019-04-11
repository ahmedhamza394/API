
#This is an exmaple i wrote on how to make Get and Post request using Powershell
#this uses the Full Conctact API. Provide the Email in the URL and it will give information on the accoints associate with that email


$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add('X-FullContact-APIKey','YOUR API KEY')



Invoke-restmethod -Method Get -Uri "https://api.fullcontact.com/v2/person.json?email=yourEMAIL3@gmail.com" -Headers $headers |Out-File -FilePath C:\Users\burnthedead\Desktop\get_request.txt





$headerEnrich = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headerEnrich.Add('Authorization','Bearer YOUR API KEY')



Invoke-restmethod -Method Post -Uri "https://api.fullcontact.com/v3/person.enrich" -Headers $headersEnrich -Body @{email = "YOUREMAIL.com"; webhook = "http://www.fullcontact.com/hook"} |Out-File -FilePath C:\Users\burnthedead\Desktop\billy.txt