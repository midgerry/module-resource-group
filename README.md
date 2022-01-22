# Module Azure Resource Group

Module for creating and managing Azure Resource Groups.

## Usage

```
module "resource_group" {
  source = "git://https://github.com/danielscholl-terraform/module-resource-group"

  name     = "iac-terraform"
  location = "eastus2"

  resource_tags          = {
    environment = "test-environment"
  }
}
```

<!--- BEGIN_TF_DOCS --->
## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.90.0 |
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| environment | The environment tag for the Resource Group. | `string` | `"dev"` | no |
| isLocked | Does the Resource Group prevent deletion? | `bool` | `false` | no |
| location | The location of the Resource Group. | `string` | n/a | yes |
| name | The name of the Resource Group. | `string` | n/a | yes |
| names | Names to be applied to resources (inclusive) | <pre>object({<br>    environment = string<br>    location    = string<br>    product     = string<br>  })</pre> | <pre>{<br>  "environment": "sandbox",<br>  "location": "eastus2",<br>  "product": "iac"<br>}</pre> | no |
| resource\_tags | Map of tags to apply to taggable resources in this module.  By default the taggable resources are tagged with the name defined above and this map is merged in | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The id of the Resource Group. |
| location | The location of the Resource Group. |
| name | The name of the Resource Group. |
| random | A random string derived from the Resource Group. |
<!--- END_TF_DOCS --->
