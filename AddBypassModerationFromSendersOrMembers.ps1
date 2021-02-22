$Groups = "Group1", "Group2", "Group3"

foreach ($Group in $Groups) {$Moder = (Get-DistributionGroup $Group).BypassModerationFromSendersOrMembers.Name

	$User = "User"

	if ($Moder.Count -gt 1) {$Moder += $User} else {$Moder = @($Moder, $User)}

	Set-DistributionGroup $Group -BypassModerationFromSendersOrMembers $Moder

}