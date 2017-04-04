# encoding: utf-8

# ------------------------------------------------------------------------------
# Copyright (c) 2006-2012 Novell, Inc. All Rights Reserved.
#
#
# This program is free software; you can redistribute it and/or modify it under
# the terms of version 2 of the GNU General Public License as published by the
# Free Software Foundation.
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along with
# this program; if not, contact Novell, Inc.
#
# To contact Novell about this file by physical or electronic mail, you may find
# current contact information at www.novell.com.
# ------------------------------------------------------------------------------

# File:	modules/dialogs-items.ycp
# Package:	Configuration of samba-server
# Summary:	Widgets used by SAMBA server configuration
# Authors:	Jiri Srain <jsrain@suse.cz>
#		Stanislav Visnovsky <visnov@suse.cz>
#		Martin Lazar <mlazar@suse.cz>
#
# $Id$
module Yast
  module SambaServerSambaOptionsLocalInclude
    def initialize_samba_server_samba_options_local(include_target)
      textdomain "samba-server"

      @local_option_widgets = {
        "comment"                       => { "table" => { "unique" => true } },
        "path"                          => {
          "table" => { "unique" => true, "required" => true },
          "popup" => {
            "validate_type"     => :function,
            "validate_function" => fun_ref(
              method(:ValidateSharePath),
              "boolean (any, string, map)"
            )
          }
        },
        "directory"                     => { "table" => { "unique" => true } },
        "username"                      => { "table" => { "unique" => true } },
        "user"                          => { "table" => { "unique" => true } },
        "users"                         => { "table" => { "unique" => true } },
        "invalid users"                 => { "table" => { "unique" => true } },
        "valid users"                   => { "table" => { "unique" => true } },
        "admin users"                   => { "table" => { "unique" => true } },
        "read list"                     => { "table" => { "unique" => true } },
        "write list"                    => { "table" => { "unique" => true } },
        "printer admin"                 => { "table" => { "unique" => true } },
        "force user"                    => { "table" => { "unique" => true } },
        "force group"                   => { "table" => { "unique" => true } },
        "group"                         => { "table" => { "unique" => true } },
        "read only"                     => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "write ok"                      => { "table" => { "unique" => true } },
        "writeable"                     => { "table" => { "unique" => true } },
        "writable"                      => { "table" => { "unique" => true } },
        "create mask"                   => { "table" => { "unique" => true } },
        "create mode"                   => { "table" => { "unique" => true } },
        "force create mode"             => { "table" => { "unique" => true } },
        "security mask"                 => { "table" => { "unique" => true } },
        "force security mode"           => { "table" => { "unique" => true } },
        "directory mask"                => { "table" => { "unique" => true } },
        "directory mode"                => { "table" => { "unique" => true } },
        "force directory mode"          => { "table" => { "unique" => true } },
        "directory security mask"       => { "table" => { "unique" => true } },
        "force directory security mode" => { "table" => { "unique" => true } },
        "inherit permissions"           => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "inherit acls"                  => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "guest only"                    => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "only guest"                    => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "guest ok"                      => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "public"                        => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "only user"                     => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "hosts allow"                   => { "table" => { "unique" => true } },
        "allow hosts"                   => { "table" => { "unique" => true } },
        "hosts deny"                    => { "table" => { "unique" => true } },
        "deny hosts"                    => { "table" => { "unique" => true } },
        "ea support"                    => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "nt acl support"                => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "profile acls"                  => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "map acl inherit"               => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "afs share"                     => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "block size"                    => { "table" => { "unique" => true } },
        "max connections"               => { "table" => { "unique" => true } },
        "min print space"               => { "table" => { "unique" => true } },
        "strict allocate"               => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "strict sync"                   => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "sync always"                   => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "use sendfile"                  => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "write cache size"              => { "table" => { "unique" => true } },
        "max reported print jobs"       => { "table" => { "unique" => true } },
        "max print jobs"                => { "table" => { "unique" => true } },
        "printable"                     => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "print ok"                      => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "printing"                      => { "table" => { "unique" => true } },
        "cups options"                  => { "table" => { "unique" => true } },
        "print command"                 => { "table" => { "unique" => true } },
        "lpq command"                   => { "table" => { "unique" => true } },
        "lprm command"                  => { "table" => { "unique" => true } },
        "lppause command"               => { "table" => { "unique" => true } },
        "lpresume command"              => { "table" => { "unique" => true } },
        "queuepause command"            => { "table" => { "unique" => true } },
        "queueresume command"           => { "table" => { "unique" => true } },
        "printer name"                  => { "table" => { "unique" => true } },
        "printer"                       => { "table" => { "unique" => true } },
        "use client driver"             => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "default devmode"               => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "default case"                  => { "table" => { "unique" => true } },
        "case sensitive"                => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "casesignames"                  => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "preserve case"                 => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "short preserve case"           => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "mangle case"                   => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "mangling char"                 => { "table" => { "unique" => true } },
        "hide dot files"                => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "hide special files"            => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "hide unreadable"               => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "hide unwriteable files"        => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "delete veto files"             => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "veto files"                    => { "table" => { "unique" => true } },
        "hide files"                    => { "table" => { "unique" => true } },
        "veto oplock files"             => { "table" => { "unique" => true } },
        "map system"                    => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "map hidden"                    => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "map archive"                   => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "mangled names"                 => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "mangled map"                   => { "table" => { "unique" => true } },
        "store dos attributes"          => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "browseable"                    => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "browsable"                     => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "blocking locks"                => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "csc policy"                    => { "table" => { "unique" => true } },
        "fake oplocks"                  => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "locking"                       => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "oplocks"                       => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        ""                              => { "table" => { "unique" => true } },
        "oplock contention limit"       => { "table" => { "unique" => true } },
        "posix locking"                 => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "strict locking"                => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "share modes"                   => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "copy"                          => { "table" => { "unique" => true } },
        "include"                       => { "table" => { "unique" => true } },
        "exec"                          => { "table" => { "unique" => true } },
        "preexec"                       => { "table" => { "unique" => true } },
        "preexec close"                 => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "postexec"                      => { "table" => { "unique" => true } },
        "root preexec"                  => { "table" => { "unique" => true } },
        "root preexec close"            => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "root postexec"                 => { "table" => { "unique" => true } },
        "available"                     => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "volume"                        => { "table" => { "unique" => true } },
        "fstype"                        => { "table" => { "unique" => true } },
        "set directory"                 => { "table" => { "unique" => true } },
        "wide links"                    => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "follow symlinks"               => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "dont descend"                  => { "table" => { "unique" => true } },
        "magic script"                  => { "table" => { "unique" => true } },
        "magic output"                  => { "table" => { "unique" => true } },
        "delete readonly"               => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "dos filemode"                  => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "dos filetimes"                 => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "dos filetime resolution"       => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "fake directory create times"   => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "vfs objects"                   => { "table" => { "unique" => true } },
        "vfs object"                    => { "table" => { "unique" => true } },
        "msdfs root"                    => {
          "table" => { "unique" => true },
          "popup" => { "widget" => :checkbox }
        },
        "msdfs proxy"                   => { "table" => { "unique" => true } }
      }
    end
  end
end
