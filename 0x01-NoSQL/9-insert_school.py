#!/usr/bin/env python3
""" Insert a document in python
"""


def insert_school(mongo_collection, **kwargs):
    """ insert anew document based on kwargs
    """
    results = mongo_collection.insert_one(kwargs)
    return results.inserted_id
