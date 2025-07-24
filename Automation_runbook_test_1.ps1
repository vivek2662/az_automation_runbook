#creating new script
<#
    .DESCRIPTION
        An example runbook which gets all the ARM resources using the Managed Identity

    .NOTES
        AUTHOR: Azure Automation Team
        LASTEDIT: Oct 26, 2021
#>



try
{
    "Logging in to Azure..."
    Connect-AzAccount -Identity
}
catch {
    Write-Error -Message $_.Exception
    throw $_.Exception
}

#Get all ARM resources from all resource groups
$ResourceGroups = Get-AzResourceGroup

foreach ($ResourceGroup in $ResourceGroups)
{    
    Write-Output ("Showing resources in resource group " + $ResourceGroup.ResourceGroupName)
    $Resources = Get-AzResource -ResourceGroupName $ResourceGroup.ResourceGroupName
    foreach ($Resource in $Resources)
    {
        Write-Output ($Resource.Name + " of type " +  $Resource.ResourceType)
    }
    Write-Output ("")
}

#Creating a new branch and testing the branch

#Enabled Publish branch directly

#making changes in the source in automation runbook

#making changes in the source in automation runbook 9989008



----------------------------------------------------------

#making changes in the source in automation runbook 9989008
