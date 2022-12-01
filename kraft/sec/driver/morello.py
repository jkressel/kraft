from __future__ import absolute_import
from __future__ import unicode_literals

from .driver import Driver


class MorelloDriver(Driver):
    gate_str = "flexos_nop_gate"
    kconfig_opt = "CONFIG_LIBFLEXOS_MORELLO=y"

    @property
    def kconfig(self): return [
        # Add additional KCONFIG options here
        # 'CONFIG_XYZ=y',
    ]

    def __init__(self, *args, **kwargs):
        super(MorelloDriver, self).__init__(*args, **kwargs)

    #def repr(self):
    #    return {
    #    }