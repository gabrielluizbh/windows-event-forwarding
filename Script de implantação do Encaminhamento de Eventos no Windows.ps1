## Script de implantação do Encaminhamento de Eventos no Windows - Créditos Gabriel Luiz - www.gabrielluiz.com


# Habilita o WinRM.


winrm quickconfig

# ou

winrm qc



# Verificar o estado das configurações do WinRM.



winrm get winrm/config



# Habilitar e iniciar o serviço coletor de eventos.


wecutil qc



# Valor necessáiro para habiltar o computador coletor por GPO.


Server=http://<Event Collectors FQDN>:5985/wsman/SubscriptionManager/WEC




<#

Explicação:


Aonde estiver escrito <Event Collectors FQDN> subistitua pela FQDN do seu servidor coletor.

Exemplo:


Server=http://coletor.gabrielluiz.bh:5985/wsman/SubscriptionManager/WEC


#>



<#

Referências:

https://learn.microsoft.com/windows/win32/winrm/installation-and-configuration-for-windows-remote-management?WT.mc_id=AZ-MVP-5003815

https://learn.microsoft.com/windows-server/administration/windows-commands/wecutil?WT.mc_id=AZ-MVP-5003815

#>