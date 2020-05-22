# Get-SystemInfo

## Descrição
Script para automatizar a coleta de informações de computadores para fins de troubleshooting de problemas em estações e servidores Windows. Baixe o script [aqui](https://github.com/franciscojk/Get-SystemInfo/blob/master/Get-SystemInfo.ps1).


## Objetivo
O objetivo do script é conseguir coletar informações do computador de forma rápida para análise offline, sem tomar muito tempo do usuário com acessos remotos.


## Informações coletadas
As informações coletadas pelo script são as seguintes:

- Informações de Hardware e Software (CPU, Memoria, SO, Updates, etc...);
- Politicas de grupo aplicadas para usuário e para computador;
- Informações de rede (interfaces, IPs, dns, gateway);
- Informações de volumes e discos, com espaço total e utilizado;
- Logs de eventos de Sistema e Aplicação dos últimos 30 dias.


## Como utilizar
Para utilizar o script, executá-lo conforme exemplo abaixo:

- Abrir o Windows Powershell e executar:
```
.\Get-SystemInfo.ps1
```
*OU*
```
Clicar com o botão direito do mouse no arquivo e selecionar ###Executar com o PowerShell###
```

## Arquivo de saída
O arquivo de saída com as informações coletadas serão salvas na área de trabalho do usuário corrente no seguinte formato:
```
MT-SysInfo-<nomedocoputador>.txt
```

O arquivo pode ser copiado para o computador do analista para análise offline.
