class traceview::libcurl {

  include traceview

  $traceview_libcurl_version = hiera('traceview_libcurl_version', '7.22.0-3ubuntu4.1+tracelytics2')

  package { "libcurl3":
    ensure  => $traceview_libcurl_version,
    require => [ Package["liboboe0"], Apt::Source["traceview"] ],
  }

}
