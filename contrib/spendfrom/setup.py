from distutils.core import setup
setup(name='knotspendfrom',
      version='1.0',
      description='Command-line utility for knotcoin "coin control"',
      author='Gavin Andresen',
      author_email='gavin@knotcoinfoundation.org',
      requires=['jsonrpc'],
      scripts=['spendfrom.py'],
      )
