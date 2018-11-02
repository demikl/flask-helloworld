import pytest
from flask_helloworld import app


@pytest.fixture
def client():
    app.app.config['TESTING'] = True
    client = app.app.test_client()
    yield client


def test_hello(client):
	assert b'Hello' in client.get('/').data