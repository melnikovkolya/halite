describe "Jobber Unit Tests", () ->

  Jobber = null
  Itemizer = null

  data1 = null
  data2 = null
  data3 = null
  data4 = null
  data5 = null
  data6 = null
  dataError = null
  dataInfo = null
  mid = null
  $q = null
  $rootScope = null
  Itemizer = null

  data1_job2 = null
  data2_job2 = null

  beforeEach module('appUtilSrvc')

  beforeEach inject (_$rootScope_, _$q_, _Jobber_, _Itemizer_) ->
    Itemizer = _Itemizer_
    $q = _$q_
    $rootScope = _$rootScope_
    Jobber = _Jobber_
    _data1 = '{"tag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/0","data":{"jid":"20131109195504714490","cmd":"_minion_event","_stamp":"2013-11-09_19:55:08.251106","tag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/0","data":{"len":6,"ret":{"comment":"File /tmp/testfile1 is in the correct state","__run_num__":0,"changes":{},"name":"/tmp/testfile1","result":true}},"id":"Adityas-MacBook-Pro.local"},"utag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/0/2013-11-09_19:55:08.251106"}'
    _data2 = '{"tag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/1","data":{"jid":"20131109195504714490","cmd":"_minion_event","_stamp":"2013-11-09_19:55:08.819216","tag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/1","data":{"len":6,"ret":{"comment":"File /tmp/testfile3 is in the correct state","__run_num__":1,"changes":{},"name":"/tmp/testfile3","result":true}},"id":"Adityas-MacBook-Pro.local"},"utag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/1/2013-11-09_19:55:08.819216"}'
    _data3 = '{"tag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/2","data":{"jid":"20131109195504714490","cmd":"_minion_event","_stamp":"2013-11-09_19:55:09.350806","tag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/2","data":{"len":6,"ret":{"comment":"File /tmp/testfile2 is in the correct state","__run_num__":2,"changes":{},"name":"/tmp/testfile2","result":true}},"id":"Adityas-MacBook-Pro.local"},"utag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/2/2013-11-09_19:55:09.350806"}'
    _data4 = '{"tag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/3","data":{"jid":"20131109195504714490","cmd":"_minion_event","_stamp":"2013-11-09_19:55:10.429731","tag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/3","data":{"len":6,"ret":{"comment":"File /tmp/testfile4 is in the correct state","__run_num__":3,"changes":{},"name":"/tmp/testfile4","result":true}},"id":"Adityas-MacBook-Pro.local"},"utag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/3/2013-11-09_19:55:10.429731"}'
    _data5 = '{"tag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/4","data":{"jid":"20131109195504714490","cmd":"_minion_event","_stamp":"2013-11-09_19:55:10.951955","tag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/4","data":{"len":6,"ret":{"comment":"File /tmp/testfile5 is in the correct state","__run_num__":4,"changes":{},"name":"/tmp/testfile5","result":true}},"id":"Adityas-MacBook-Pro.local"},"utag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/4/2013-11-09_19:55:10.951955"}'
    _data6 = '{"tag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/5","data":{"jid":"20131109195504714490","cmd":"_minion_event","_stamp":"2013-11-09_19:55:11.451270","tag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/5","data":{"len":6,"ret":{"comment":"File /tmp/testfile6 is in the correct state","__run_num__":5,"changes":{},"name":"/tmp/testfile6","result":true}},"id":"Adityas-MacBook-Pro.local"},"utag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/5/2013-11-09_19:55:11.451270"}'
    _dataError = '{"tag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/5","data":{"jid":"20131109195504714490","cmd":"_minion_event","_stamp":"2013-11-09_19:55:11.451270","tag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/5","data":{"len":6,"ret":{"comment":"File /tmp/testfile6 is in the correct state","__run_num__":5,"changes":{},"name":"/tmp/testfile6","result":false}},"id":"Adityas-MacBook-Pro.local"},"utag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/5/2013-11-09_19:55:11.451270"}'
    _dataInfo = '{"tag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/5","data":{"jid":"20131109195504714490","cmd":"_minion_event","_stamp":"2013-11-09_19:55:11.451270","tag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/5","data":{"len":6,"ret":{"comment":"File /tmp/testfile6 is in the correct state","__run_num__":5,"changes":{"diff": "foo"},"name":"/tmp/testfile6","result":true}},"id":"Adityas-MacBook-Pro.local"},"utag":"salt/job/20131109195504714490/prog/Adityas-MacBook-Pro.local/5/2013-11-09_19:55:11.451270"}'
    _data1_job2 = '{"tag":"salt/job/20131109195504714520/prog/Adityas-MacBook-Pro.local2/0","data":{"jid":"20131109195504714520","cmd":"_minion_event","_stamp":"2013-11-09_19:55:08.251106","tag":"salt/job/20131109195504714520/prog/Adityas-MacBook-Pro.local2/0","data":{"len":6,"ret":{"comment":"File /tmp/testfile1 is in the correct state","__run_num__":0,"changes":{},"name":"/tmp/testfile1","result":true}},"id":"Adityas-MacBook-Pro.local2"},"utag":"salt/job/20131109195504714520/prog/Adityas-MacBook-Pro.local2/0/2013-11-09_19:55:08.251106"}'
    _data2_job2 = '{"tag":"salt/job/20131109195504714520/prog/Adityas-MacBook-Pro.local2/1","data":{"jid":"20131109195504714520","cmd":"_minion_event","_stamp":"2013-11-09_19:55:08.819216","tag":"salt/job/20131109195504714520/prog/Adityas-MacBook-Pro.local2/1","data":{"len":6,"ret":{"comment":"File /tmp/testfile3 is in the correct state","__run_num__":1,"changes":{},"name":"/tmp/testfile3","result":true}},"id":"Adityas-MacBook-Pro.local2"},"utag":"salt/job/20131109195504714520/prog/Adityas-MacBook-Pro.local2/1/2013-11-09_19:55:08.819216"}'


    data1 = JSON.parse(_data1)
    data2 = JSON.parse(_data2)
    data3 = JSON.parse(_data3)
    data4 = JSON.parse(_data4)
    data5 = JSON.parse(_data5)
    data6 = JSON.parse(_data6)
    dataError = JSON.parse(_dataError)
    dataInfo = JSON.parse(_dataInfo)
    data1_job2 = JSON.parse(_data1_job2)
    data2_job2 = JSON.parse(_data2_job2)
    mid = 'Adityas-MacBook-Pro.local'
    Itemizer = _Itemizer_

  it "defines a processProgEvent function", () ->
    job = new Jobber('foo', 'bar')
    expect(job.processProgEvent).toBeDefined()

  it "sets number of events correctly", () ->
    job = new Jobber('foo', 'bar')
    job.processProgEvent(data1)
    expect(job.totalProgEvents(mid)).toBe(6)

  it "sets number of events correctly consistently", () ->
    job = new Jobber('foo', 'bar')
    job.processProgEvent(data1)
    job.processProgEvent(data2)
    expect(job.totalProgEvents(mid)).toBe(6)

  it "sets current run number correctly", () ->
    job = new Jobber('foo', 'bar')
    job.processProgEvent(data1)
    expect(job.getCurrentRunNumber(mid)).toBe(1)

  it "sets current run number correctly for multiple invocations", () ->
    job = new Jobber('foo', 'bar')
    job.processProgEvent(data1)
    job.processProgEvent(data2)
    expect(job.getCurrentRunNumber(mid)).toBe(2)

  it "sets comments correctly", () ->
    job = new Jobber('foo', 'bar')
    job.processProgEvent(data1)
    expect(job.getLatestComment(mid)).toBe('File /tmp/testfile1 is in the correct state')

  it "sets progress correctly", () ->
    job = new Jobber('foo', 'bar')
    job.processProgEvent(data1)
    expect(job.getPercentageComplete(mid)).toBe(17)

  it "sets progress correctly for multiple runs", () ->
    job = new Jobber('foo', 'bar')
    job.processProgEvent(data1)
    job.processProgEvent(data2)
    job.processProgEvent(data3)
    expect(job.getPercentageComplete(mid)).toBe(50)

  it "shows no progress events for newly instantiated jobs successfully", () ->
    job = new Jobber('foo', 'bar')
    expect(job.hasProgressEvents(mid)).toBe(false)

  it "shows no progress events for newly instantiated jobs successfully", () ->
    job = new Jobber('foo', 'bar')
    job.processProgEvent(data1)
    expect(job.hasProgressEvents(mid)).toBe(true)

  it "sets error status correctly", () ->
    job = new Jobber('foo', 'bar')
    job.processProgEvent(dataError)
    expect(job.currentState(mid)).toBe(Jobber.STATUS_FAILURE)

  it "sets changed status correctly", () ->
    job = new Jobber('foo', 'bar')
    job.processProgEvent(dataInfo)
    expect(job.currentState(mid)).toBe(Jobber.STATUS_INFO)

  it "sets success status correctly", () ->
    job = new Jobber('foo', 'bar')
    job.processProgEvent(data1)
    expect(job.currentState(mid)).toBe(Jobber.STATUS_SUCCESS)

  it "has resolveOnAnyPass set to false by default", () ->
    job = new Jobber('foo', 'bar')
    expect(job.resolveOnAnyPass).toBe(false)

  it "does not call resolve when resolveOnAnyPass is true and all minions return false", () ->
    job = new Jobber('foo', 'bar')
    job.resolveOnAnyPass = true
    i = 0
    job.commit($q)
    .then () ->
      i = 1
    , () ->
      i = 2
    falseReturn =
      done: false
    job.results.set('foo', falseReturn)
    job.results.set('bar', falseReturn)
    job.checkDone()
    $rootScope.$digest()
    expect(i).toBe(0)

  it "calls resolve when resolveOnAnyPass is true and some minion returns true", () ->
    job = new Jobber('foo', 'bar')
    job.resolveOnAnyPass = true
    i = 0
    job.commit($q)
    .then () ->
      i = 1
    , () ->
      i = 2
    falseReturn =
      done: false
      active: true
    trueReturn =
      done: true
      active: true
    job.results.set('foo', falseReturn)
    job.results.set('bar', trueReturn)
    job.checkDone()
    $rootScope.$digest()
    expect(i).toBe(1)

  it "does not call resolve when resolveOnAnyPass is false and some minion returns true", () ->
    job = new Jobber('foo', 'bar')
    job.resolveOnAnyPass = false
    i = 0
    job.commit($q)
    .then () ->
        i = 1
      , () ->
        i = 2
    falseReturn =
      done: false
      active: true
    trueReturn =
      done: true
      active: true
    job.results.set('foo', falseReturn)
    job.results.set('bar', trueReturn)
    job.checkDone()
    $rootScope.$digest()
    expect(i).toBe(0)

  it "returns false when there are no nested events", () ->
    job = new Jobber('foo', 'bar')
    expect(job.hasNestedProgressEvents()).toBe(false)

  it "returns true when there are nested events", () ->
    job = new Jobber('foo', 'bar')
    job.processProgEvent(data1)
    expect(job.hasNestedProgressEvents()).toBe(true)

  it 'sets the total number of events corectly', () ->
    job = new Jobber('foo', 'bar')
    job.minions = new Itemizer()
    job.minions.set('foo', 'bar', 123)
    job.minions.set('foo1', 'bar1', 123)
    job.processProgEvent(data1)
    expect(job.totalEvents).toBe(12)

  it 'sets the number of completed events corectly', () ->
    job = new Jobber('foo', 'bar')
    job.minions = new Itemizer()
    job.processProgEvent(data1)
    job.processProgEvent(data2)
    expect(job.completedEvents).toBe(2)

  it 'reports correct total percentage complete', () ->
    job = new Jobber('foo', 'bar')
    job.minions = new Itemizer()
    job.minions.set('foo', 'bar', 123)
    job.minions.set('foo1', 'bar1', 123)
    job.processProgEvent(data1)
    job.processProgEvent(data1_job2)
    job.processProgEvent(data2_job2)
    expect(job.totalPercentageComplete()).toBe(Math.round(3 / 12 * 100))

  it 'reports correct total percentage complete even if events are repeated', () ->
    job = new Jobber('foo', 'bar')
    job.minions = new Itemizer()
    job.minions.set('foo', 'bar', 123)
    job.minions.set('foo1', 'bar1', 123)
    job.processProgEvent(data1)
    job.processProgEvent(data1_job2)
    job.processProgEvent(data1_job2)
    expect(job.totalPercentageComplete()).toBe(Math.round(2 / 12 * 100))
