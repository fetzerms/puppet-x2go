# Copyright 2011, niklaus.giger@member.fsf.org
#
# This program is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License version 3 as published by
# the Free Software Foundation.class

class x2go($version = 'installed') {
  include x2go::common
#  if ($::x2go::client::ensure) { include x2go::client }
}
# vim: ts=2 et sw=2 autoindent

