## Module Optic.Index

#### `Index`

``` purescript
class (IndexKey m a, IndexValue m b) <= Index m a b where
  ix :: a -> TraversalP m b
```

##### Instances
``` purescript
instance indexArr :: (Eq e) => Index (e -> a) e a
instance indexMaybe :: Index (Maybe a) Unit a
instance indexIdentity :: Index (Identity a) Unit a
instance indexArray :: Index (Array a) Int a
instance indexList :: Index (List a) Int a
instance indexSet :: (Ord a) => Index (Set a) a Unit
instance indexMap :: (Ord k) => Index (Map k v) k v
instance indexStrMap :: Index (StrMap v) String v
```


