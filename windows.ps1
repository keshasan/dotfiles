
New-Alias k kubectl
Remove-Alias h
New-Alias h helm
New-Alias g goto

function goto {
    param (
        $location
    )

    Switch ($location) {
        "pr" {
            Set-Location -Path "$HOME/projects"
        }
        "bp" {
            Set-Location -Path "$HOME/projects/boilerplates"
        }
        "cs" {
            Set-Location -Path "$HOME/projects/cheat-sheets"
        }
        default {
            echo "Invalid location"
        }
    }
}



$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
$ENV:STARSHIP_DISTRO = "者  Keshasan "
Invoke-Expression (&starship init powershell)