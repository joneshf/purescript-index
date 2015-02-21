# Module Documentation

## Module Optic.At

#### `At`

``` purescript
class (Index m a b) <= At m a b where
  at :: a -> LensP m (Maybe b)
```


#### `atIdentity`

``` purescript
instance atIdentity :: At (Identity a) Unit a
```


#### `atMaybe`

``` purescript
instance atMaybe :: At (Maybe a) Unit a
```


#### `atSet`

``` purescript
instance atSet :: (Ord v) => At (S.Set v) v Unit
```


#### `atMap`

``` purescript
instance atMap :: (Ord k) => At (M.Map k v) k v
```


#### `atStrMap`

``` purescript
instance atStrMap :: At (SM.StrMap v) String v
```



## Module Optic.Contains

#### `Contains`

``` purescript
class (IndexKey m a) <= Contains m a where
  contains :: a -> LensP m Boolean
```


#### `containsSet`

``` purescript
instance containsSet :: (Ord k) => Contains (Set k) k
```



## Module Optic.Index

#### `Index`

``` purescript
class (IndexKey m a, IndexValue m b) <= Index m a b where
  ix :: a -> TraversalP m b
```


#### `indexArr`

``` purescript
instance indexArr :: (Eq e) => Index (e -> a) e a
```


#### `indexMaybe`

``` purescript
instance indexMaybe :: Index (Maybe a) Unit a
```


#### `indexIdentity`

``` purescript
instance indexIdentity :: Index (Identity a) Unit a
```


#### `indexArray`

``` purescript
instance indexArray :: Index [a] Number a
```


#### `indexSet`

``` purescript
instance indexSet :: (Ord a) => Index (S.Set a) a Unit
```


#### `indexMap`

``` purescript
instance indexMap :: (Ord k) => Index (M.Map k v) k v
```


#### `indexStrMap`

``` purescript
instance indexStrMap :: Index (SM.StrMap v) String v
```



## Module Optic.Index.Class

#### `IndexKey`

``` purescript
class IndexKey m k where
```


#### `IndexValue`

``` purescript
class IndexValue m v where
```


#### `indexKeyArr`

``` purescript
instance indexKeyArr :: IndexKey (a -> b) a
```


#### `indexKeyArray`

``` purescript
instance indexKeyArray :: IndexKey [a] Number
```


#### `indexKeyIdentity`

``` purescript
instance indexKeyIdentity :: IndexKey (Identity a) Unit
```


#### `indexKeyMap`

``` purescript
instance indexKeyMap :: IndexKey (M.Map k v) k
```


#### `indexKeyMaybe`

``` purescript
instance indexKeyMaybe :: IndexKey (Maybe a) Unit
```


#### `indexKeySet`

``` purescript
instance indexKeySet :: IndexKey (S.Set k) k
```


#### `indexKeyStrMap`

``` purescript
instance indexKeyStrMap :: IndexKey (SM.StrMap v) String
```


#### `indexValueArr`

``` purescript
instance indexValueArr :: IndexValue (a -> b) b
```


#### `indexValueArray`

``` purescript
instance indexValueArray :: IndexValue [a] a
```


#### `indexValueIdentity`

``` purescript
instance indexValueIdentity :: IndexValue (Identity a) a
```


#### `indexValueMap`

``` purescript
instance indexValueMap :: IndexValue (M.Map k v) v
```


#### `indexValueMaybe`

``` purescript
instance indexValueMaybe :: IndexValue (Maybe a) a
```


#### `indexValueSet`

``` purescript
instance indexValueSet :: IndexValue (S.Set k) Unit
```


#### `indexValueStrMap`

``` purescript
instance indexValueStrMap :: IndexValue (SM.StrMap v) v
```



## Module Optic.Index.Types

#### `LensP`

``` purescript
type LensP s a = forall f. (Functor f) => (a -> f a) -> s -> f s
```


#### `TraversalP`

``` purescript
type TraversalP s a = forall f. (Applicative f) => (a -> f a) -> s -> f s
```




