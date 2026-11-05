/*
 * Holds procs to help with list operations
 * Contains groups:
 *			Misc
 *			Sorting
 */

/*
 * Misc
 */

/*
 * ## Lazylists
 *
 * * What is a lazylist?
 *
 * True to its name a lazylist is a lazy instantiated list.
 * It is a list that is only created when necessary (when it has elements) and is null when empty.
 *
 * * Why use a lazylist?
 *
 * Lazylists save memory - an empty list that is never used takes up more memory than just `null`.
 *
 * * When to use a lazylist?
 *
 * Lazylists are best used on hot types when making lists that are not always used.
 *
 * For example, if you were adding a list to all atoms that tracks the names of people who touched it,
 * you would want to use a lazylist because most atoms will never be touched by anyone.
 *
 * * How do I use a lazylist?
 *
 * A lazylist is just a list you defined as `null` rather than `list()`.
 * Then, you use the LAZY* macros to interact with it, which are essentially null-safe ways to interact with a list.
 *
 * Note that you probably should not be using these macros if your list is not a lazylist.
 * This will obfuscate the code and make it a bit harder to read and debug.
 *
 * Generally speaking you shouldn't be checking if your lazylist is `null` yourself, the macros will do that for you.
 * Remember that LAZYLEN (and by extension, length) will return 0 if the list is null.
 */

#define LAZYISIN(L, V) (L ? (V in L) : FALSE)
#define QDEL_LAZYASSOCLIST(L) for(var/K in L) qdel(L[K]); L = null;

//Removes any null entries from the list
//Returns TRUE if the list had nulls, FALSE otherwise
/proc/listclearnulls(list/L)
	var/start_len = L.len
	var/list/N = new(start_len)
	L -= N
	return L.len < start_len

/*
 * Returns list containing entries that are in either list but not both.
 * If skipref = 1, repeated elements are treated as one.
 * If either of arguments is not a list, returns null
 */
/proc/uniquemergelist(list/first, list/second, skiprep=0)
	if(!islist(first) || !islist(second))
		return
	var/list/result = new
	if(skiprep)
		result = difflist(first, second, skiprep)+difflist(second, first, skiprep)
	else
		result = first ^ second
	return result

/**
 * Picks a random element from a list based on a weighting system.
 * For example, given the following list:
 * A = 6, B = 3, C = 1, D = 0
 * A would have a 60% chance of being picked,
 * B would have a 30% chance of being picked,
 * C would have a 10% chance of being picked,
 * and D would have a 0% chance of being picked.
 * You should only pass integers in.
 */
/proc/pick_weight_allow_zero(list/list_to_pick) //The original pick_weight proc will sometimes pick entries with zero weight.  I'm not sure if changing the original will break anything, so I left it be.
	if(length(list_to_pick) == 0)
		return null

	var/total = 0
	for(var/item in list_to_pick)
		if(!list_to_pick[item])
			list_to_pick[item] = 0
		total += list_to_pick[item]

	total = rand(1, total)
	for(var/item in list_to_pick)
		var/item_weight = list_to_pick[item]
		if(item_weight == 0)
			continue

		total -= item_weight
		if(total <= 0)
			return item

	return null

// Allows picks with non-integer weights and also 0
// precision 1000 means it works up to 3 decimal points
/proc/pickweight_float(list/L, default=1, precision=1000)
	var/total = 0
	var/item
	for (item in L)
		if (!isnum(L[item]))
			L[item] = default
		total += round(L[item]*precision)

	total = rand(0, total)/precision
	for (item in L)
		total -=L [item]
		if (total <= 0 && L[item])
			return item

	return null

//Return a list with no duplicate entries
/proc/uniqueList(list/L)
	. = list()
	for(var/i in L)
		. |= i

//same, but returns nothing and acts on list in place (also handles associated values properly)
/proc/uniqueList_inplace(list/L)
	var/temp = L.Copy()
	L.len = 0
	for(var/key in temp)
		if (isnum(key))
			L |= key
		else
			L[key] = temp[key]

//for sorting clients or mobs by ckey
/proc/sortKey(list/L, order=1)
	return sortTim(L, order >= 0 ? /proc/cmp_ckey_asc : /proc/cmp_ckey_dsc)

//any value in a list
/proc/sortList(list/L, cmp=/proc/cmp_text_asc)
	return sortTim(L.Copy(), cmp)

//uses sortList() but uses the var's name specifically. This should probably be using mergeAtom() instead
/proc/sortNames(list/L, order=1)
	return sortTim(L.Copy(), order >= 0 ? /proc/cmp_name_asc : /proc/cmp_name_dsc)

//Mergesort: any value in a list, preserves key=value structure
/proc/sortAssoc(list/L)
	if(L.len < 2)
		return L
	var/middle = L.len / 2 + 1 // Copy is first,second-1
	return mergeAssoc(sortAssoc(L.Copy(0,middle)), sortAssoc(L.Copy(middle))) //second parameter null = to end of list

/proc/mergeAssoc(list/L, list/R)
	var/Li=1
	var/Ri=1
	var/list/result = new()
	while(Li <= L.len && Ri <= R.len)
		if(sorttext(L[Li], R[Ri]) < 1)
			result += R&R[Ri++]
		else
			result += L&L[Li++]

	if(Li <= L.len)
		return (result + L.Copy(Li, 0))
	return (result + R.Copy(Ri, 0))

//Move a single element from position fromIndex within a list, to position toIndex
//All elements in the range [1,toIndex) before the move will be before the pivot afterwards
//All elements in the range [toIndex, L.len+1) before the move will be after the pivot afterwards
//In other words, it's as if the range [fromIndex,toIndex) have been rotated using a <<< operation common to other languages.
//fromIndex and toIndex must be in the range [1,L.len+1]
//This will preserve associations ~Carnie
/proc/moveElement(list/L, fromIndex, toIndex)
	if(fromIndex == toIndex || fromIndex+1 == toIndex)	//no need to move
		return
	if(fromIndex > toIndex)
		++fromIndex	//since a null will be inserted before fromIndex, the index needs to be nudged right by one

	L.Insert(toIndex, null)
	L.Swap(fromIndex, toIndex)
	L.Cut(fromIndex, fromIndex+1)


//Move elements [fromIndex,fromIndex+len) to [toIndex-len, toIndex)
//Same as moveElement but for ranges of elements
//This will preserve associations ~Carnie
/proc/moveRange(list/L, fromIndex, toIndex, len=1)
	var/distance = abs(toIndex - fromIndex)
	if(len >= distance)	//there are more elements to be moved than the distance to be moved. Therefore the same result can be achieved (with fewer operations) by moving elements between where we are and where we are going. The result being, our range we are moving is shifted left or right by dist elements
		if(fromIndex <= toIndex)
			return	//no need to move
		fromIndex += len	//we want to shift left instead of right

		for(var/i=0, i<distance, ++i)
			L.Insert(fromIndex, null)
			L.Swap(fromIndex, toIndex)
			L.Cut(toIndex, toIndex+1)
	else
		if(fromIndex > toIndex)
			fromIndex += len

		for(var/i=0, i<len, ++i)
			L.Insert(toIndex, null)
			L.Swap(fromIndex, toIndex)
			L.Cut(fromIndex, fromIndex+1)

//Move elements from [fromIndex, fromIndex+len) to [toIndex, toIndex+len)
//Move any elements being overwritten by the move to the now-empty elements, preserving order
//Note: if the two ranges overlap, only the destination order will be preserved fully, since some elements will be within both ranges ~Carnie
/proc/swapRange(list/L, fromIndex, toIndex, len=1)
	var/distance = abs(toIndex - fromIndex)
	if(len > distance)	//there is an overlap, therefore swapping each element will require more swaps than inserting new elements
		if(fromIndex < toIndex)
			toIndex += len
		else
			fromIndex += len

		for(var/i=0, i<distance, ++i)
			L.Insert(fromIndex, null)
			L.Swap(fromIndex, toIndex)
			L.Cut(toIndex, toIndex+1)
	else
		if(toIndex > fromIndex)
			var/a = toIndex
			toIndex = fromIndex
			fromIndex = a

		for(var/i=0, i<len, ++i)
			L.Swap(fromIndex++, toIndex++)

//return first thing in L which has var/varname == value
//this is typecaste as list/L, but you could actually feed it an atom instead.
//completely safe to use
/proc/getElementByVar(list/L, varname, value)
	varname = "[varname]"
	for(var/datum/D in L)
		if(D.vars.Find(varname))
			if(D.vars[varname] == value)
				return D

//remove all nulls from a list
/proc/removeNullsFromList(list/L)
	while(L.Remove(null))
		continue
	return L

//Copies a list, and all lists inside it recusively
//Does not copy any other reference type
/proc/deepCopyList(list/l)
	if(!islist(l))
		return l
	. = l.Copy()
	for(var/i = 1 to l.len)
		var/key = .[i]
		if(isnum(key))
			// numbers cannot ever be associative keys
			continue
		var/value = .[key]
		if(islist(value))
			value = deepCopyList(value)
			.[key] = value
		if(islist(key))
			key = deepCopyList(key)
			.[i] = key
			.[key] = value

//Flattens a keyed list into a list of it's contents
/proc/flatten_list(list/key_list)
	if(!islist(key_list))
		return null
	. = list()
	for(var/key in key_list)
		. |= key_list[key]

/proc/assoc_list_strip_value(list/input)
	var/list/ret = list()
	for(var/key in input)
		ret += key
	return ret

/proc/list_keys(list/l)
	if(!islist(l))
		return list()
	var/ret = list()
	for(var/key in l)
		ret += key
	return ret

/proc/list_values(list/l)
	if(!islist(l))
		return list()
	var/ret = list()
	for(var/key in l)
		ret += l[key]
	return ret
