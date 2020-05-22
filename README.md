# Get-SystemInfo

## Descrição
Script para automatizar a coleta de informações de computadores para fins de troubleshooting de problemas em estações e servidores Windows. 

## Informações coletadas
As informações coletadas pelo script são as seguintes:

- Informações de Hardware e Software (CPU, Memoria, SO, Updates, etc...);
- Politicas de grupo aplicadas para usuário e para computador;
- 

Para que o script seja executado com sucesso em seu ambiente, é necessário que o módulo [PSEXCEL.ZIP](https://github.com/franciscojk/PowerShell-Automatiza-FS/blob/master/psexcel.zip) seja descompactado no seguinte caminho:
```
%ProgramFiles%\WindowsPowerShell\Modules
```
**Importante**: Não descompactar na raiz da pasta, e sim, criar uma pasta PSEXCEL e descompactar os arquivos dentro desta pasta.

## Como utilizar
Para utilizar o script, executá-lo conforme exemplo abaixo:

```
.\Automatiza-FileServer.ps1 -pathplanilha "C:\temp\Novas_pastas_COMPARTILHADAS_v1.xlsx"
```
