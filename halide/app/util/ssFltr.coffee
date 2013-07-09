ssFilter = angular.module 'ssFilter', []

ssFilter.filter 'capitalcase', () ->
    filter = (input) ->
        return input.substring(0,1).toUpperCase()+input.substring(1)
    return filter   

ssFilter.filter 'titlecase', () ->
    filter = (input) ->
        chunks = input.split(" ")
        for chunk, i in chunks
            chunks[i] = chunk.substring(0,1).toUpperCase()+chunk.substring(1)
        return chunks.join(" ")
    return filter 