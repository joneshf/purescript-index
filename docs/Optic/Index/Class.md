## Module Optic.Index.Class

#### `IndexKey`

``` purescript
class IndexKey m k
```

##### Instances
``` purescript
instance indexKeyArr :: IndexKey (a -> b) a
instance indexKeyArray :: IndexKey (Array a) Int
instance indexKeyList :: IndexKey (List a) Int
instance indexKeyIdentity :: IndexKey (Identity a) Unit
instance indexKeyMap :: IndexKey (Map k v) k
instance indexKeyMaybe :: IndexKey (Maybe a) Unit
instance indexKeySet :: IndexKey (Set k) k
instance indexKeyStrMap :: IndexKey (StrMap v) String
```

#### `IndexValue`

``` purescript
class IndexValue m v
```

##### Instances
``` purescript
instance indexValueArr :: IndexValue (a -> b) b
instance indexValueArray :: IndexValue (Array a) a
instance indexValueList :: IndexValue (List a) a
instance indexValueIdentity :: IndexValue (Identity a) a
instance indexValueMap :: IndexValue (Map k v) v
instance indexValueMaybe :: IndexValue (Maybe a) a
instance indexValueSet :: IndexValue (Set k) Unit
instance indexValueStrMap :: IndexValue (StrMap v) v
```


