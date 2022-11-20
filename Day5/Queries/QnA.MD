# Questions and Answers asked during the session.
## Q1. Issue came while using terraform configuration for azure resources.
Sol - We found that the terraform version was old and not able to make the required api calls.

## Q2. How to use Terraform in case of Multiple Subscriptions configured on the system?
Sol - There are three ways to handle that.
- By passing the subscription details as part of your provider configuration.
- By using Terraform Local Workspaces
- In case of using Terraform Enterprise the same can be handled using Terraform Cloud/Enterprise Workspaces.

