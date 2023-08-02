abstract class CacheMapper<Cache, Data> {
  Data mapFromCache(Cache cache);

  Cache mapToCache(Data data);
}
