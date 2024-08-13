#!/usr/bin/env python3
""" list all documents in Python
"""
def list_all(mongo_collection):
    """ Return an empty list"""
    return [doc for doc in mongo_collection.find()]
