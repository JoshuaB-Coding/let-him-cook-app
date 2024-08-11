from fastapi import APIRouter
from pydantic import BaseModel, EmailStr

router = APIRouter(
    prefix="/user",
    tags=["user"],
)

class LoginDetails(BaseModel):
    username: str
    password: str

@router.post("/login")
def post_login(login_details: LoginDetails) -> None:
    print(**login_details)
    return {}

class NewUser(BaseModel):
    username: str
    password: str
    email: EmailStr

@router.post("/create")
def create_user(new_user: NewUser) -> None:
    # insert_user
    print(**new_user)
    return {}
