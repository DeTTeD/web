CONFIG = {
	'mode': 'wsgi',
	'working_dir': '/home/box/web/',
	'python': '/usr/bin/python',
	'args': (
		'--bind=0.0.0.0:8080',
		'--workers=16',
		'--timeout=60',
		'hello:app',
	),
}
CONFIG = {
	'mode': 'wsgi',
	'working_dir': '/home/box/web/ask/',
	'python': '/usr/bin/python',
	'args': (
		'--bind=0.0.0.0:8000',
		'--workers=16',
		'--timeout=60',
		'wsgi:app',
	),
}
