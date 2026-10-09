Class {
	#name : 'MyEmptyPiece',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyEmptyPiece >> id [
    ^ '-'
]

{ #category : 'testing' }
MyEmptyPiece >> isEmpty [
    ^ true
]

{ #category : 'testing' }
MyEmptyPiece >> isMyEmptyPiece [
    ^ true
]

{ #category : 'testing' }
MyEmptyPiece >> isOccupied [
    ^ false
]

{ #category : 'testing' }
MyEmptyPiece >> isPiece [
    ^ false
]
