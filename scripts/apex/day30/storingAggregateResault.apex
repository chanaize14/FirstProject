AggregateResult oppResult = [
  SELECT
    COUNT(Id) CountOfOpps,
    MIN(Amount) LowestAmount,
    MAX(CreatedDate) LastestOppCreatedDate
  FROM OPPORTUNITY
];

System.debug('Count of Opps is ' + oppResult.get('CountOfOpps'));
System.debug('MIN(Amount) is ' + oppResult.get('LowestAmount'));

Integer count       = (Integer) oppResult.get('CountOfOpps');
Decimal amount      = (Decimal) oppResult.get('LowestAmount');
DateTime latestDate = (DateTime) oppResult.get('LastestOppCreatedDate');

System.debug('count value is : ' + count);
System.debug('amount value is : ' + amount);
System.debug('latestDate value is : ' + latestDate);