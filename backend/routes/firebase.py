import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore

cred = credentials.Certificate(r"../credentials.json")
firebase_admin.initialize_app(cred)

db = firestore.client()

data = {
    'title':'Is Firebase working',
    'statuS': 'TODO'
}

doc_ref = db.collection('User Collection').document()

doc_ref.set(data)

print('Document ID:', doc_ref.id)