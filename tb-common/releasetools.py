#
# Copyright 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

def IncrementalOTA_InstallEnd(info):
  info.script.Mount("/system")
  RunCustomScript(info, "deunify.sh", "")
  info.script.Unmount("/system")
  return

def FullOTA_InstallEnd(info):
  info.script.Mount("/system")
  RunCustomScript(info, "deunify.sh", "")
  info.script.Unmount("/system")

def RunCustomScript(info, name, arg):
  info.script.AppendExtra(('run_program("/tmp/install/bin/%s", "%s");' % (name, arg)))
  return
