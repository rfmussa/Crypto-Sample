abstract class DomainMapper<T, DomainModel> {
  DomainModel toDomain(T source);
  T fromDomainModel(DomainModel domainModel);
}
