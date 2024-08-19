#!/usr/bin/env python3
""" Writing strings to Redis
"""


import redis
import uuid
from typing import Union


r = redis.Redis()


class Cache:
    def __init__(self) -> None:
        """ stores an instance pf Redis client
        as private variable
        """
        self._redis = r
        self.flushdb = r.flushdb()
        
    def store(self, data: Union[str, bytes, int, float]) -> str:
        """ generates a random key and stores the input
        in Redis, return the key.
        """
        random_key = str(uuid.uuid4())
        self._redis.set(random_key, data)
        return random_key
        

        
        