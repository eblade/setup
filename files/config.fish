set -xg M20_USER "johan.egneblad@nepa.com"
set -xg GOOGLE_APPLICATION_CREDENTIALS "/home/johan.egneblad/Documents/white-device-186013-04f59651abde.json"
set -xg HEADLESS_PROJECT_LOCATION "/home/johan.egneblad/git/Machines/Nepa.MachineManager.Blueprint.Headless/Nepa.MachineManager.Blueprint.Headless.csproj"
set -xg M20_GCP_PROJECT "white-device-186013"
set -xg M20_STATUSUPDATES_SUBSCRIPTION "m20johanstatus"
set -xg ASPNETCORE_ENVIRONMENT "Development"
set -xg ASPNETCORE_URLS "http://localhost:8080"
set -xg M20_QUEUED_SUPER_REQUEST_TOPIC "m20johanrequests"
set -xg M20_QUEUED_TEST_CALC_REQUEST_TOPIC "m20johantestrequests"
set -xg AggregatedDataConnectionString "Server=.;Database=NVisDev;User Id=sa;Password=ot6q27j5V89BuQ8"
set -xg ConnectionString "Server=.;Database=AggegatedDataExportsBridgeDev;User Id=sa;Password=ot6q27j5V89BuQ8"


alias databoss="dotnet $HOME/git/DataBoss/Build/DataBoss.Cli/netcoreapp2.1/DataBoss.Cli.dll"
alias py='pipenv run python'
alias p='pipenv run'
alias bp='dotnet /home/johan.egneblad/git/Machines/Nepa.MachineManager.Blueprint.Headless/bin/Debug/net5.0/BlueprintHeadless.dll'
alias ipquery='dotnet /home/johan.egneblad/opt/IPQuery/IPQuery.Headless.dll'
alias grepcs='grep -ris --include=\*.cs'
alias greppy='grep -ris --include=\*.py'
alias w='tmuxp load work'
alias g='git'

set -xg SUDO_ASKPASS "$HOME/bin/askpass-sgp"
alias pudo='sudo -A'
alias please='sudo -A'

alias paz='python3 ~/git/paz/paz.py -cwb'
alias pas='python3 ~/git/paz/paz.py -sl'

function vpn
    netExtender -u johan.egneblad -p (paz -s nepa) -d Nepa connect.nepa.com
end

complete --command paz --arguments '(python3 ~/git/paz/paz.py)' -x
complete --command pas --arguments '(python3 ~/git/paz/paz.py)' -x

function pdf_compress
    set source $argv[1]
    set dest $argv[2]
    echo "Compressing $source -> $dest"
    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$dest $source
    echo "Done."
end
