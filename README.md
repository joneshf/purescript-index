# Module Documentation

## Module Optic.At

### Type Classes

    class (Index m a b) <= At m a b where
      at :: a -> LensP m (Maybe b)


### Type Class Instances

    instance atIdentity :: At (Identity a) Unit a

    instance atMap :: (Ord k) => At (M.Map k v) k v

    instance atMaybe :: At (Maybe a) Unit a

    instance atSet :: (Ord v) => At (S.Set v) v Unit

    instance atStrMap :: At (SM.StrMap v) String v


## Module Optic.Contains

### Type Classes

    class (IndexKey m a) <= Contains m a where
      contains :: a -> LensP m Boolean


### Type Class Instances

    instance containsSet :: (Ord k) => Contains (Set k) k


## Module Optic.Index

### Type Classes

    class (IndexKey m a, IndexValue m b) <= Index m a b where
      ix :: a -> TraversalP m b


### Type Class Instances

    instance indexArr :: (Eq e) => Index (e -> a) e a

    instance indexArray :: Index [a] Number a

    instance indexIdentity :: Index (Identity a) Unit a

    instance indexMap :: (Ord k) => Index (M.Map k v) k v

    instance indexMaybe :: Index (Maybe a) Unit a

    instance indexSet :: (Ord a) => Index (S.Set a) a Unit

    instance indexStrMap :: Index (SM.StrMap v) String v


## Module Optic.Index.Class

### Type Classes

    class IndexKey m k where

    class IndexValue m v where


### Type Class Instances

    instance indexKeyArr :: IndexKey (a -> b) a

    instance indexKeyArray :: IndexKey [a] Number

    instance indexKeyIdentity :: IndexKey (Identity a) Unit

    instance indexKeyMap :: IndexKey (M.Map k v) k

    instance indexKeyMaybe :: IndexKey (Maybe a) Unit

    instance indexKeySet :: IndexKey (S.Set k) k

    instance indexKeyStrMap :: IndexKey (SM.StrMap v) String

    instance indexValueArr :: IndexValue (a -> b) b

    instance indexValueArray :: IndexValue [a] a

    instance indexValueIdentity :: IndexValue (Identity a) a

    instance indexValueMap :: IndexValue (M.Map k v) v

    instance indexValueMaybe :: IndexValue (Maybe a) a

    instance indexValueSet :: IndexValue (S.Set k) Unit

    instance indexValueStrMap :: IndexValue (SM.StrMap v) v


## Module Optic.Index.Types

### Types

    type LensP s a = forall f. (Functor f) => (a -> f a) -> s -> f s

    type TraversalP s a = forall f. (Applicative f) => (a -> f a) -> s -> f s



