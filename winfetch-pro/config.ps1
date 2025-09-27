# ===== WINFETCH-PRO CONFIGURATION =====

# $image = "./terminal-ico.png"
# $noimage = $true

# Display image using ASCII characters
# $ascii = $true

# Set the version of Windows to derive the logo from.
$logo = "Windows 11"

# Specify width for image/logo
$imgwidth = 18

# Specify minimum alpha value for image pixels to be visible
# $alphathreshold = 50

# Custom ASCII Art
# This should be an array of strings, with positive
# height and width equal to $imgwidth defined above.
# $CustomAscii = @(
#     "⠀⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣦⠀ ⠀"
#     "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣶⣶⣾⣷⣶⣆⠸⣿⣿⡟⠀ ⠀"
#     "⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣷⡈⠻⠿⠟⠻⠿⢿⣷⣤⣤⣄⠀⠀ ⠀"
#     "⠀⠀⠀⠀⠀⠀⠀⣴⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣦⠀ ⠀"
#     "⠀⠀⠀⢀⣤⣤⡘⢿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⡇ ⠀"
#     "⠀⠀⠀⣿⣿⣿⡇⢸⣿⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⣉⣉⡁ ⠀"
#     "⠀⠀⠀⠈⠛⠛⢡⣾⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⡇ ⠀"
#     "⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⠟⠀ ⠀"
#     "⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⡿⢁⣴⣶⣦⣴⣶⣾⡿⠛⠛⠋⠀⠀ ⠀"
#     "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠿⠿⢿⡿⠿⠏⢰⣿⣿⣧⠀⠀ ⠀"
#     "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⠟⠀⠀ ⠀"
# )

# Make the logo blink
# $blink = $true

# Display all built-in info segments.
# $all = $true

# Add a custom info line
# function info_custom_time {
#     return @{
#         title = "Time"
#         content = (Get-Date)
#     }
# }

# Configure which disks are shown
# $ShowDisks = @("C:", "D:")
# Show all available disks
# $ShowDisks = @("*")

# Configure which package managers are shown
# disabling unused ones will improve speed
# $ShowPkgs = @("winget", "scoop", "choco")

# Use the following option to specify custom package managers.
# Create a function with that name as suffix, and which returns
# the number of packages. Two examples are shown here:
# $CustomPkgs = @("cargo", "just-install")
# function info_pkg_cargo {
#     return (cargo install --list | Where-Object {$_ -like "*:" }).Length
# }
# function info_pkg_just-install {
#     return (just-install list).Length
# }

# Configure how to show info for levels
# 'textaltbar' is the default.
# 'bar' is for bar only.
# 'textbar' is for text + bar.
# 'bartext' is for bar + text.
# 'textaltbar is for alternate bar only.
# 'textaltbar' is for text + alternate bar style.
# 'altbartext' is for alternate bar + text.
# $cpustyle = 'bar'
# $memorystyle = 'textbar'
# $diskstyle = 'bartext'
# $batterystyle = 'bartext'

# Configure color of each quadrant in Windows logo.
# Supports colors in format "0;34" (ANSI), "38;5;123" (Extended ANSI) or names.
# Supported names
# Standard colors: black, red, green, yellow, blue, magenta, cyan, white
# Dark colors: Add "dark_" before any standard color (e.g., dark_red, dark_blue)
# $colorTopLeft = "1;37"
# $colorTopRight = "blue"
# $colorBottomLeft = "1;34"
# $colorBottomRight = "white"

# Configure color of keys and values in the bottom section and in left and right columns
# Supports colors in similar way as the previous section on Windows logo
# $colorBottomKey = "0;34"    
# $colorBottomValue = "1;37"    
# $colorLeftKey = "dark_cyan"     
# $colorLeftValue = "white" 
# $colorRightKey = "0;36"     
# $colorRightValue = "1;37"

# Use config_left for a single column layout similar to winfetch
# Use both config_left and config_right for a two-column layout
# Elements prefixed with "general_" will occupy the entire line, 
# and their corresponding config_right elements will be ignored.
# To set a different color scheme for keys and values in general, use:
# $colorGeneralKey = "red"     
# $colorGeneralValue = "cyan"

$config_left = @(
    "blank"
    "user"
    "mini_os"
    "resolution"
    "mini_uptime"
    "cpu_name"
    "cpu_cores"
    "ram_total"
    "ram_form_factor"
    "blank"
    "general_memory"
    "general_disk"
    # "general_battery_health"
    "blank"
    # "weather_condition"
    # "temp_celcius"
    # "sun"
)

$config_right = @(
    "blank"
    "hostname"
    "kernel"
    "refresh_rate"
    "cpu_processes"
    "cpu_clock_speed"
    "mini_cache"
    "ram_frequency"
    "cpu_usage_only"
    "blank"
    "blank"
    "blank"
    "blank"
    "blank"
    # "humidity"
    # "feels_like_celcius"
    # "wind"
)

# Elements in config_bottom will be placed below the logo.
# Note: A non-blank config_bottom without a logo is not supported and may cause formatting issues.
$config_bottom = @(
    "blank"
    "colorbar_center"
)

# Each array in the header will be a separate line, with all elements inside that array being connected by space.
# Header elements are placed above the left and right column.
# Always keep the @() as the last element of header. Otherwise, if header has one array with 3 elements,
# they are printed in 3 different lines instead of being connected in one line.
$header = @(
    @("emoji_date", "emoji_time", "emoji_battery"), @()
)

# Specify the color for each element in header (set to white if color not mentioned)
$headerColorMap = @{
    'emoji_time'    = "yellow" 
    'emoji_date'    = "red"
    'emoji_battery' = "cyan"
}

# Similar to the header, but placed below the left and right columns.
$footer = @()

# Define colors for each element in the footer, similar to the headerColorMap.
$footerColorMap = @{}

# Add any of the following elements to config_left, config_right, config_bottom
# header, or footer to enable their output

# "blank"
# "title"
# "user"
# "hostname"
# "dashes"
# "os"            
# "mini-os"
# "emoji_date"              # Intended to be used in the header
# "emoji_time"              # Intended to be used in the header
# "emoji_battery"
# "computer"
# "bios"
# "kernel"
# "motherboard"
# "uptime"                  # Format: 1 day 4 hours 32 minutes
# "mini_uptime"             # Format: 1d 4h 32min
# "display"
# "refresh_rate"
# "resolution"              # Resolution of all monitors
# "mini_resolution"         # Resolution of the primary monitor
# "ps_pkgs"                 # takes some time
# "pkgs"
# "pwsh"
# "terminal"
# "terminal_font"
# "theme"
# "cpu"
# "cpu_usage"               # Shows the cpu usage percentage and the number of running processes
# "cpu_usage_only"          # Shows the cpu usage percentage
# "cpu_processes"           # Shows the number of running processes
# "cpu_name"
# "cpu_clock_speed"
# "cpu_cores"
# "cache"
# "mini_cache"
# "gpu"
# "ram"
# "ram_form_factor"
# "ram_total"
# "ram_frequency"
# "memory"
# "disk"
# "battery"
# "battery_health"
# "locale"
# "region"
# "language"
# "weather"
# "bluetooth"
# "wifi"
# "local_ip"
# "public_ip"
# "colorbar"
# "colorbar_center"
# "gradient"
# "gradient_center"
# "weather"                 
# "weather_condition"
# "humidity"
# "sun"                     # Shows the sunset/sunrise time
# "temp_celcius"
# "temp_farenheit"
# "wind"
# "feels_like_celcius"
# "feels_like_farenheit"