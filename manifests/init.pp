# Install prerequisite packages for LSST writing of Xpra documents
#
# @summary Install prerequisite packages for LSST writing of Xpra documents
#
# @example
#   include lsst_xpra
class lsst_xpra (
  Array[String[1], 1] $packages,
  String        $yumrepo_baseurl,
  String        $yumrepo_gpgkey,
) {

  yumrepo { 'xpra':
    ensure   => present,
    descr    => 'xpra $releasever - $basearch',
    baseurl  => $yumrepo_baseurl,
    enabled  => 1,
    gpgkey   => $yumrepo_gpgkey,
    gpgcheck => 1,
    protect  => 0,
  }

  ensure_packages( $packages, {'ensure' => 'present', require => [ Yumrepo['xpra'], ] ,})

  ## CVE-2018-14665 MITIGATION - 2018-11-01
  file { '/usr/bin/Xorg':
    mode    => '0755',
#    require => Package['xorg-x11-server-Xorg'],
  }

}
