from __future__ import absolute_import
from .celery import app as celery_app


__all__ = ('celery_app',)
# celery_app.conf.update(
#     broker_url='redis://localhost:6379/0',
#     result_backend='redis://localhost:6379/0',
# )