abstract class DataMapper<Data, Domain> {
  Domain mapFromData(Data entity);

  Data mapToData(Domain domain);
}
