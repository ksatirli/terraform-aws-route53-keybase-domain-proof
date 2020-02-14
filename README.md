# Terraform Module: Keybase Domain Proofs

> [Terraform](https://terraform.io/) Module for managing AWS Route 53 [DNS Records](https://docs.aws.amazon.com/workmail/latest/adminguide/add_domain.html) to enable verification of [Keybase Domain Proofs](https://help.github.com/en/articles/verifying-your-organizations-domain).

## Table of Contents

- [Terraform Module: Keybase Domain Verification DNS Record](#terraform-module-keybase-domain-verification-dns-record)
  - [Table of Contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Dependencies](#dependencies)
  - [Usage](#usage)
    - [Module Variables](#module-variables)
    - [Module Outputs](#module-outputs)
  - [Author Information](#author-information)
  - [License](#license)

## Requirements

This module requires Terraform version `0.12.0` or newer.

## Dependencies

This module depends on a correctly configured [AWS Provider](https://www.terraform.io/docs/providers/aws/index.html) in your Terraform codebase.

## Usage

Add the module to your Terraform resources like so:

```hcl
module "keybase-site-verification" {
  source              = "operatehappy/route53-keybase-site-verification/aws"
  version             = "1.0.0"
  zone_id             = "Z3P5QSUBK4POTI"
  verification_record = "38834dez61"
}
```

Then, fetch the module from the [Terraform Registry](https://registry.terraform.io/modules/operatehappy/route53-github-verification-records) using `terraform get`.

### Module Variables

Available variables are listed below, along with their default values:

| variable            | type   | description                            | default |
|---------------------|--------|----------------------------------------|---------|
| zone_id             | string | ID of the DNS Zone to store Records in |         |
| record_ttl          | string | TTL for all DNS records                | `300`   |
| verification_record | string | Keybase Site Verification Record       |         |

Additionally, the following variables are generated as [locals](https://www.terraform.io/docs/configuration/locals.html):

| key                   | value                                                  |
|-----------------------|--------------------------------------------------------|
| `zone_name`           | `data.aws_route53_zone.zone.name`                      |
| `verification_record` | "keybase-site-verification=${var.verification_record}" |

### Module Outputs

Available outputs are listed below, along with their description

| output         | description                                               |
|----------------|-----------------------------------------------------------|
| `verification` | interpolated value of `aws_route53_record.ownership.name` |
| `zone_name`    | interpolated value of `local.zone_name`                   |

## Author Information

This module is maintained by the contributors listed on [GitHub](https://github.com/operatehappy/terraform-aws-route53-workmail-records/graphs/contributors)

Development of this module was sponsored by [Operate Happy](https://github.com/operatehappy).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
