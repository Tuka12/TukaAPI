<table border="1">
    <thead>
        <th>#Userid</th>
        <th>#Title</th>
    </thead>
    <tbody>
        @foreach ($posts as $item)
           <tr>
               <td>{{$item->userId}}</td>
               <td>{{$item->title}}</td>
            </tr> 
        @endforeach
    </tbody>
</table>