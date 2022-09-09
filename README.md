# Keybase Domain Proofs

> This Terraform Module manages DNS records for [Keybase Domain Proofs](https://book.keybase.io/guides/proof-integration-guide).

<!-- TOC -->
* [Keybase Domain Proofs](#keybase-domain-proofs)
  * [Requirements](#requirements)
  * [Usage](#usage)
    * [Inputs](#inputs)
    * [Outputs](#outputs)
  * [Author Information](#author-information)
  * [License](#license)
    * [Inputs](#inputs)
    * [Outputs](#outputs)
<!-- TOC -->

## Requirements

* Amazon Web Services (AWS) [Account](https://aws.amazon.com/account/)
* Keybase [Account](https://keybase.io/)
* Terraform `1.1.x` or newer.

## Usage

For examples, see the [./examples](https://github.com/ksatirli/terraform-aws-route53-keybase-domain-proof/tree/main/examples) directory.

<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| domain_proof | Domain Proof TXT Record (without `keybase-site-verification=` prefix). | `string` | n/a | yes |
| zone_id | ID of the DNS Zone to store DNS Record in. | `string` | n/a | yes |
| record_ttl | TTL for the DNS record. | `string` | `300` | no |

### Outputs

| Name | Description |
|------|-------------|
| aws_route53_record | Exported Attributes for `aws_route53_record`. |
<!-- END_TF_DOCS -->

## Author Information

This module is maintained by the contributors listed on [GitHub](https://github.com/ksatirli/terraform-aws-route53-keybase-domain-proof/graphs/contributors).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.

<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| domain_proof | Domain Proof TXT Record (without `keybase-site-verification=` prefix) | `string` | n/a | yes |
| zone_id | ID of the DNS Zone to store Records in | `string` | n/a | yes |
| record_ttl | TTL for all DNS records | `string` | `300` | no |

### Outputs

| Name | Description |
|------|-------------|
| domain_proof | interpolated value of `aws_route53_record.domain_proof.name` |
| zone_name | interpolated value of `local.zone_name` |
<!-- END_TF_DOCS -->
