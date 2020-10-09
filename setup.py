#!/usr/bin/env python

from glob import glob

from ppsetuptools import setup

data_files = [
    ('/etc/catalyst', ['etc/catalyst.conf', 'etc/catalystrc']),
    ('/usr/share/man/man1', ['files/catalyst.1']),
    ('/usr/share/man/man5',
     ['files/catalyst-config.5', 'files/catalyst-spec.5']
    ),
    ('share/catalyst/arch', glob('arch/*')),
    ('share/catalyst/livecd', glob('livecd/**/*', recursive=True)),
    ('share/catalyst/targets', glob('targets/**', recursive=True)),
]

setup(data_files=data_files)
