# @summary
#   The vSphere module extends the Director. It provides import sources for virtual machines and physical hosts from vSphere.
#
# @note If you want to use `git` as `install_method`, the CLI `git` command has to be installed. You can manage it yourself as package resource or declare the package name in icingaweb2 class parameter `extra_packages`.
#
# @param [Enum['absent', 'present']] ensure
#   Enable or disable module.
#
# @param [String] git_repository
#   Set a git repository URL.
#
# @param [Optional[String]] git_revision
#   Set either a branch or a tag name, eg. `stable/0.7.0` or `v0.7.0`.
#
# @note Check out the [vSphere module documentation](https://www.icinga.com/docs/director/latest/vsphere/doc/).
#
class icingaweb2::module::vsphere(
  String                    $git_repository,
  Enum['absent', 'present'] $ensure           = 'present',
  Optional[String]          $git_revision     = undef,
){

  icingaweb2::module { 'vsphere':
    ensure         => $ensure,
    git_repository => $git_repository,
    git_revision   => $git_revision,
  }
}
