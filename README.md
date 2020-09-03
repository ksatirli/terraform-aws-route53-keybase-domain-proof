# Terraform Module: Keybase Domain Proof

> Terraform Module for managing AWS Route 53 DNS Records for a _Keybase Domain Proof_.

## Table of Contents

- [Terraform Module: Keybase Domain Proof](#terraform-module-keybase-domain-proof)
  - [Table of Contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Dependencies](#dependencies)
  - [Usage](#usage)
    - [Inputs](#inputs)
    - [Outputs](#outputs)
  - [Author Information](#author-information)
  - [License](#license)

## Requirements

This module requires Terraform version `0.13.0` or newer.

## Dependencies

This module depends on a correctly configured [AWS Provider](https://www.terraform.io/docs/providers/aws/index.html) in your Terraform codebase.

## Usage

Add the module to your Terraform resources like so:

```hcl
module "keybase_domain_proof" {
  source              = "operatehappy/route53-keybase-domain-proof/aws"
  version             = "1.1.0"
  zone_id             = "Z3P5QSUBK4POTI"
  domain_proof        = "38834dez61"
}
```

Then, fetch the module from the [Terraform Registry](https://registry.terraform.io/modules/operatehappy/route53-keybase-domain-proof) using `terraform get`.

### Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| domain_proof | Domain Proof TXT Record (without `keybase-site-verification=` prefix) | `string` | n/a |
| zone_id | ID of the DNS Zone to store Records in | `string` | n/a |
| record_ttl | TTL for all DNS records | `string` | `300` |

### Outputs

| Name | Description |
|------|-------------|
| domain_proof | interpolated value of `aws_route53_record.domain_proof.name` |
| zone_name | interpolated value of `local.zone_name` |

## Author Information

This module is maintained by the contributors listed on [GitHub](https://github.com/operatehappy/terraform-aws-route53-keybase-domain-proof/graphs/contributors).

Development of this module was sponsored by [Operate Happy](https://github.com/operatehappy).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
