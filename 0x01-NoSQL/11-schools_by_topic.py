#!/usr/bin/env python3
''' lists of schools having a specific topic
'''


def schools_by_topic(mongo_collection, topic):
    ''' return list of school having a specific topics
    '''
    topic_filter = {
        'topics': {
            '$elemMatch': {
                '$eq': topic,
            },
        },
    }
    return [doc for doc in mongo_collection.find(topic_filter)]