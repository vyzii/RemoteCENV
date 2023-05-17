Add-Type -assembly System.Windows.Forms

#Main Window for GUI
$RCENVMainForm = New-Object System.Windows.Forms.Form
$RCENVMainForm.Text = "Remote Machine Environment Variable Utility"
$RCENVMainForm.Width = 600
$RCENVMainForm.Height = 400
$RCENVMainForm.AutoSize = $true

#Machine Name Section
$MachineNameLabel = New-Object System.Windows.Forms.Label
$MachineNameLabel.Width = 65
$MachineNameLabel.Location = New-Object System.Drawing.Point(0,10)
$MachineNameLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleRight
$MachineNameLabel.Text = "Hostname: "
$RCENVMainForm.Controls.Add($MachineNameLabel)

$MachineNameTextBox = New-Object System.Windows.Forms.TextBox
$MachineNameTextBox.Width = 300
$MachineNameTextBox.Location = New-Object System.Drawing.Point(70,10)
$RCENVMainForm.Controls.Add($MachineNameTextBox)

#Variable Name Section
$VariableNameLabel = New-Object System.Windows.Forms.Label
$VariableNameLabel.Width = 65
$VariableNameLabel.Location = New-Object System.Drawing.Point(0,40)
$VariableNameLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleRight
$VariableNameLabel.Text = "Variable Name: "
$RCENVMainForm.Controls.Add($VariableNameLabel)

$VariableNameTextBox = New-Object System.Windows.Forms.TextBox
$VariableNameTextBox.Width = 300
$VariableNameTextBox.Location = New-Object System.Drawing.Point(70,40)
$RCENVMainForm.Controls.Add($VariableNameTextBox)

#Variable Value Section
$VariableValueLabel = New-Object System.Windows.Forms.Label
$VariableValueLabel.Width = 65
$VariableValueLabel.Location = New-Object System.Drawing.Point(0,70)
$VariableValueLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleRight
$VariableValueLabel.Text = "Variable Value: "
$RCENVMainForm.Controls.Add($VariableValueLabel)

$VariableValueTextBox = New-Object System.Windows.Forms.TextBox
$VariableValueTextBox.Width = 300
$VariableValueTextBox.Location = New-Object System.Drawing.Point(70,70)
$RCENVMainForm.Controls.Add($VariableValueTextBox)

#Set Variable Button
$SetVariableButton = New-Object System.Windows.Forms.Button
$SetVariableButton.Size = New-Object System.Drawing.Size(80,20)
$SetVariableButton.Location = New-Object System.Drawing.Point(500,10)
$SetVariableButton.Text = "Set Variable"
$RCENVMainForm.Controls.Add($SetVariableButton)


$RCENVMainForm.Showdialog()